#include "PetalSurface.hpp"

PetalSurface::PetalSurface(Repere r, int nStrips, int nQuads, Settings settings)
        : mSettings(settings), Surface(r, nStrips, nQuads) {

    mOpenings = new float[nStrips];

    for (auto i = 0; i < nStrips; ++i) {
        mOpenings[i] = mSettings.o1 * (i / nStrips) + mSettings.o2 * (1 - i / nStrips);
    }

    auto t = (mSettings.t1 + mSettings.t2) / 2;
    auto dt = mSettings.t2 - mSettings.t1;

    mThetas1 = new float[nQuads];
    mThetas2 = new float[nQuads];

    for (auto i = 0; i < nQuads; ++i) {
        auto delta = dt * dt * (1.3 - exp(-20.0 * (1 - i / (nQuads - 1))));
        mThetas1[i] = (float) (t - delta);
        mThetas2[i] = (float) (t + delta);
    }
}


void PetalSurface::calculate_params(int i, int j, float u, float t, long timing, Params *p) {
    if (u > t) t = u;
    u = 1 - u;
    if (u > t) t = u;
    u = (float) exp(-0.001 * timing);
    t = u + (mOpenings[i] - 0.2f * (float) exp(-5 * (1 - t))) * (1 - u);

    mSettings.t1 = mThetas1[j];
    mSettings.t2 = mThetas2[j];

    p->s1 = (float) (0.5 * sin(M_PI * t));
    p->s2 = (float) (0.3 + 0.2 * t);
    p->r1 = (float) -t;
    p->r2 = (float) (0.9 * pow(1 - t, 2));
    p->rz = (float) (1 + sqrt(t));
}

Vector PetalSurface::get_vertex_position(float u, float t, Params *p) {
    auto theta = mSettings.t1 * u + (1 - u) * mSettings.t2;
    auto r = (1.0f - exp(-5 * t)) + p->r1 * pow((threshold(t, p->s1) / (ONE - p->s1)), 2) +
             p->r2 * pow((threshold(t, p->s2) / (ONE - p->s2)), 2);

    return Vector(t * p->rz, 0.8f * r * sin(theta), 0.8f * r * cos(theta));
}

Vector PetalSurface::get_vertex_color(float u, float t) { return mSettings.c2 * t + mSettings.c1 * (1 - t); }


void PetalSurface::make_step(unsigned long long timing) final {
    for (auto i = 0; i < nStrips - 1; ++i) {
        for (auto j = 0; j < nQuads - 1; ++j) {
            Params p;
            auto t = (float) j / (nQuads - 1);
            auto u = (float) i / (nStrips - 1);

            calculate_params(i, j, u, t, timing, &p);

            mVertexes[i * nQuads + j].p = get_vertex_position(u, t, &p);

            if (u > t) t = u;
            u = 1 - (float) i / (nStrips - 1);
            if (u > t) t = u;
            t = (float) exp(-10 * (1 - t));

            mVertexes[i * nQuads + j].c = get_vertex_color(u, t);
        }
    }

    Surface::make_step(timing);
}
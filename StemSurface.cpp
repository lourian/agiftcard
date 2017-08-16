#include "StemSurface.hpp"

StemSurface::StemSurface(Repere r, int nStrips, int nQuads, Vector curve, Vector color)
        : mCurve(curve), mColor(color), Surface(r, 5 * nStrips, 5 * nQuads) { }


void StemSurface::make_step(unsigned long long timing) final {
    if (timing > 0)
        return;

    for (auto i = 0; i < nStrips; ++i) {
        for (auto j = 0; j < nQuads; ++j) {
            float a = i;
            float b = j;

            auto va = Vector(
                    10 * (a / (nStrips - 1)),
                    0.05f * (2.0f - a / (nStrips - 1)) * (float) cos(2 * M_PI * b / (nQuads - 1)),
                    0.05f * (2.0f - a / (nStrips - 1)) * (float) sin(2 * M_PI * b / (nQuads - 1)));

            auto vb = mCurve * (float) pow(1 - a / (nStrips - 1), 2);

            mVertexes[i * nQuads + j].p = va + vb;
            mVertexes[i * nQuads + j].c = mColor * (0.5f + 0.5f * (1.0f - a / (nStrips - 1.0f)));
        }
    }

    Surface::make_step(timing);
}
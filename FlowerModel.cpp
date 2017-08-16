#include "FlowerModel.hpp"

FlowerModel::FlowerModel() {
    auto r = 0.2f * random_float() + 0.5f;
    auto o = 2 * M_PI * random_float();
    auto stemColor = Vector(0.0f, random_float() * 0.4f + 0.2f, 0.0f);
    auto stemCurve = Vector(0, r * cos(o), r * sin(o));

    mStem = new StemSurface(DefaultRepere, StemStripsCount, StemTripResolution, stemCurve, stemColor);
    mPetals = create_petals(DefaultRepere);
}


std::vector<PetalSurface*>* FlowerModel::create_petals(Repere repere) {
    auto lrp = Repere::translate(Vector::ZERO, Vector(0.0f, -1.1f, 0.0f), repere.i, repere.j, repere.k);
    auto lri = Vector(0.0f, 1.0f, 0.0f);
    auto lrj = Vector(1.0f, 0.0f, 0.0f);
    auto localRepere = Repere(lrp, lri, lrj, Vector::cross_product(lri, lrj).ortho());
    auto petals = new std::vector<PetalSurface*>();

    auto c1 = Vector(pow(random_float(), 2), sqrt(random_float()), pow(random_float(), 2));
    auto c2 = Vector(sqrt(random_float()), pow(random_float(), 2), pow(random_float(), 2));
    auto c3 = Vector(pow(random_float(), 2), pow(random_float(), 2), sqrt(random_float()));

    auto rk = (float) pow(pow(random_float(), 2), 2) * 0.5f;

    if (rk < 0.2) rk = 0.2f;

    auto k1 = rand() % 20 + 10;
    auto k2 = rand() % 40 + 40;
    auto n = 4 + rand() % 4;

    for (auto i = 0; i < n; ++i)
    {
        auto r = (float) i / (n - 1);
        r = rk * (1.0f - r) + r + 0.1f * random_float();
        auto s = 2 * M_PI * i * k1 / k2 + random_float() * M_PI / 5;
        auto t = 0.5 + 0.5 * i / (n - 1);

        petals->push_back(create_petal(c1, c2, c3, localRepere, r, (float)s, (float)t, n));
    }

    for (auto i = 0; i < n; ++i)
    {
        auto r = (float)i / (n - 1);
        r = rk * (1.0f - r) + r + 0.1f * random_float();
        auto s = 2 * M_PI / 3 + 2 * M_PI * i * k1 / k2 + random_float() * M_PI / 5;
        auto t = 0.5 + 0.5 * i / (n - 1);
        petals->push_back(create_petal(c1, c2, c3, localRepere, r, (float)s, (float)t, n));
    }

    for (auto i = 0; i < n; ++i)
    {
        auto r = (float)i / (n - 1);
        r = rk * (1.0f - r) + r + 0.1f * random_float();
        auto s = 4 * M_PI / 3 + 2 * M_PI * i * k1 / k2 + random_float() * M_PI / 5;
        auto t = 0.5 + 0.5 * i / (n - 1);
        petals->push_back(create_petal(c1, c2, c3, localRepere, r, (float)s, (float)t, n));
    }

    return petals;
}

PetalSurface* FlowerModel::create_petal(Vector c1, Vector c2, Vector c3, Repere repere, float r,
                                        float s, float t, int n) {
    return new PetalSurface(repere, BoutonStripsCount, BoutonTripResolution, (Settings) {
        o1: r,
        o2: r + 0.5f / (n - 1),
        t1: s,
        t2: (float) (s + M_PI * (2.0 + random_float()) / n),
        c1: c1 + c3 * t,
        c2: c1 * (1 - t) + (c2 * t)
    });
}


void FlowerModel::make_step(unsigned long long timing) {
    mStem->make_step(timing);

    for (auto &p : *mPetals) {
        p->make_step(timing);
    }
}

void FlowerModel::render() {
    mStem->render();

    for (auto &p : *mPetals) {
        p->render();
    }
}


FlowerModel::~FlowerModel() {
    delete mStem;
    for (auto &p : *mPetals) delete *p;
}
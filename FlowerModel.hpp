#pragma once

#include <vector>
#include "geometry.hpp"
#include "StemSurface.hpp"
#include "PetalSurface.hpp"

class FlowerModel {
    static const int StemStripsCount = 10;
    static const int StemTripResolution = 8;
    static const int BoutonStripsCount = 20;
    static const int BoutonTripResolution = 20;

    const Repere DefaultRepere = Repere(
            Vector(0.0f, -11.0f, 0.0f),
            Vector(0.0f, 1.0f, 0.0f),
            Vector(1.0f, 0.0f, 0.0f),
            Vector(0.0f, 0.0f, 1.0f));

    StemSurface *mStem;
    std::vector<PetalSurface*> *mPetals;

    std::vector<PetalSurface*>* create_petals(Repere repere);
    PetalSurface* create_petal(Vector c1, Vector c2, Vector c3, Repere repere, float r, float s, float t, int n);

public:
    FlowerModel();

    void make_step(unsigned long long timing);
    void render();

    ~FlowerModel();
};
#pragma once

#include "Surface.hpp"
#include "mmath.h.hpp"
#include <cmath>

struct Settings
{
    Vector c1;
    Vector c2;
    float o1;
    float o2;
    float t1;
    float t2;
};


struct Params {
    float s1;
    float s2;
    float r1;
    float r2;
    float rz;
};


class PetalSurface : public Surface {
    constexpr static float ONE = 1.0001F;

    Settings mSettings;
    float *mThetas1;
    float *mThetas2;
    float *mOpenings;

    void calculate_params(int i, int j, float u, float t, long timing, Params *p);
    Vector get_vertex_position(float u, float t, Params *p);
    Vector get_vertex_color(float u, float t);

public:
    PetalSurface(Repere r, int nStrips, int nQuads, Settings settings);

    void make_step(unsigned long long timing) final;
};
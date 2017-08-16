#pragma once

#include "geometry.hpp"
#include "Surface.hpp"

class StemSurface : public Surface {
    const Vector mCurve;
    const Vector mColor;

public:
    StemSurface(Repere r, int nStrips, int nQuads, Vector curve, Vector color);

    void make_step(unsigned long long timing) final;

};

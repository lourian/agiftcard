#pragma once

#include "geometry.hpp"
#include "Vertex.hpp"

class Surface {
    const Repere mRepere;

protected:
    const int nStrips, nQuads;
    Vertex *mVertexes;

public:
    Surface(Repere r, int nStrips, int nQuads);

    virtual void make_step(unsigned long long timing);
    virtual void render();

    virtual ~Surface();
};
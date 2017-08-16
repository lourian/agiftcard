#include "Surface.hpp"

Surface::Surface(Repere r, int nStrips, int nQuads) : mRepere(r), nStrips(nStrips), nQuads(nQuads) {
    mVertexes = new Vertex[nStrips * nQuads];
}


void Surface::make_step(unsigned long long timing) {
    for (auto i = 0; i < nStrips; ++i) {
        for (auto j = 0; j < nQuads; ++j) {
            auto a = mVertexes[i * nQuads + j == 0 ? 1 : j].p - mVertexes[i * nQuads + j == 0 ? 0 : j - 1].p;
            auto b = mVertexes[i == 0 ? 1 : i * nQuads + j].p
                     - mVertexes[i == 0 ? 0 : i * nQuads + j == 0 ? 0 : j - 1].p;

            mVertexes[i * nQuads + j].n = Vector::cross_product(a, b).ortho();
        }
    }
}

void Surface::render() {
    for (auto i = 0; i < nStrips - 1; ++i) {
        glBegin(GL_QUAD_STRIP);
        {
            for (auto j = 0; j < nQuads; ++j) {
                mVertexes[i * nQuads + j].render(mRepere);
                mVertexes[(i + 1) * nQuads + j].render(mRepere);
            }

            glEnd();
        }
    }
}


Surface::~Surface() {
    delete mVertexes;
}
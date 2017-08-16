#pragma once

#include <GL/gl.h>
#include "geometry.hpp"

struct Vertex {
    Vector p, n, c;

    inline void render(Repere r) {
        float diffuseMaterial[4] { c.x, c.y, c.z };
        float ambientMaterial[4] { c.x * DIFFUSE_FACTOR, c.y * DIFFUSE_FACTOR, c.z * DIFFUSE_FACTOR };

        glMaterialfv(GL_FRONT_AND_BACK, GL_DIFFUSE, diffuseMaterial);
        glMaterialfv(GL_FRONT_AND_BACK, GL_AMBIENT, ambientMaterial);

        auto n = Repere::translate(this->n, Vector::ZERO, r.i, r.j, r.k);
        auto p = Repere::translate(this->p, r.p, r.i, r.j, r.k);

        glNormal3d(n.x, n.y, n.z);
        glVertex3d(p.x, p.y, p.z);
    }

private:
    constexpr static float DIFFUSE_FACTOR = 0.2f;

    float diffuseMaterial[];
    float ambientMaterial[];
};
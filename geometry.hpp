#pragma once

#include <cmath>

struct Vector
{
    static const Vector ZERO;

    const float x, y, z;

    inline Vector(float x, float y, float z) : x(x), y(y), z(z) { }

    inline static Vector cross_product(const Vector &a, const Vector &b) {
        return Vector(a.y * b.z - a.z * b.y, a.z * b.x - a.x * b.z, a.x * b.y - a.y * b.x);
    }

    inline Vector ortho() const { return (*this) * (1.0f / (EPS + norm())); }
    inline float norm() const { return (float) sqrt(*this * *this); }

private:
    constexpr static float const EPS = 1E-6;
};


inline float operator * (const Vector &a, const Vector &b) { return a.x * b.x + a.y * b.y + a.z * b.z; }
inline Vector operator * (const Vector &a, float l) { return Vector(a.x * l, a.y * l, a.z * l); }
inline Vector operator * (float l, const Vector &b) { return b * l; }
inline Vector operator + (const Vector &a, const Vector &b) { return Vector(a.x + b.x, a.y + b.y, a.z + b.z); }
inline Vector operator - (const Vector &a, const Vector &b) { return Vector(a.x - b.x, a.y - b.y, a.z - b.z); }



struct Repere
{
    const Vector p, i, j, k;

    inline Repere(Vector p, Vector i, Vector j, Vector k) : p(p), i(i), j(j), k(k) { }

    inline static Vector translate(Vector v, Vector p, Vector i, Vector j, Vector k) {
        return (p + i * v.x) + (j * v.y + k * v.z);
    }
};
#pragma once

#include <cstdlib>

inline float threshold(float x, float y) { return x > y ? x - y : 0; }

inline float random_float() { return rand() / RAND_MAX; }
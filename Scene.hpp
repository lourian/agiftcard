#pragma once

#include "FlowerModel.hpp"

class Scene {
    FlowerModel *mModel;
    bool mRunning;
    unsigned long long mTiming;

public:
    Scene();

    void run();
    void suspend();

    void reshape(int width, int height);
    void make_step();
    void render();

    ~Scene();
};
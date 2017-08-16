#include <GL/gl.h>
#include <GL/glu.h>
#include "Scene.hpp"

Scene::Scene() {
    mModel = new FlowerModel();
    mRunning = false;
    mTiming = 0;
}


void Scene::run() {
    mRunning = true;
}

void Scene::suspend() {
    mRunning = false;
}

void Scene::reshape(int width, int height) {
    if (height == 0) height = 1;
    glViewport(0, 0, width, height);
    glMatrixMode(GL_PROJECTION);
    glLoadIdentity();
    gluPerspective(50, (float) width / height, 3, 12);
    glMatrixMode(GL_MODELVIEW);
}

void Scene::make_step() {
    if (!mRunning) return;
    mModel->make_step(mTiming++);
}

void Scene::render() {
    if (!mRunning) return;
    mModel->render();
}


Scene::~Scene() {
    suspend();
    delete mModel;
}
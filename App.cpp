#include "App.hpp"
#include "Scene.hpp"
#include "freeglut.h"

static const int TIMING_TIMER = 1;


static Scene *scene;
static bool isFullScreen;
static int x, y, width, height;


static void toggle_full_screen() {
    if (!isFullScreen) {
        x = glutGet(GLUT_WINDOW_X);
        y = glutGet(GLUT_WINDOW_Y);
        width = glutGet(GLUT_WINDOW_WIDTH);
        height = glutGet(GLUT_WINDOW_HEIGHT);
    } else {
        glutLeaveFullScreen();
        glutPositionWindow(x, y);
        glutReshapeWindow(width, height);
    }

    isFullScreen = !isFullScreen;
}

static void visibility(int visible) {
    if (visible == GLUT_VISIBLE) {
        scene->run();
    } else {
        scene->suspend();
    }
}

static void display() {
    scene->render();
    glutSwapBuffers();
}

static void timer(int timer) {
    scene->make_step();
}

static void reshape(int width, int height) {
    scene->reshape(width, height);
}

static void keyboard(unsigned char key, int, int) {
    if (key == 27) {
        glutLeaveMainLoop();
    } else if (key == 13) {
        toggle_full_screen();
    }
}


static void init_glut(int *argc, char **argv) {
    glutInit(argc, argv);
    glutInitDisplayMode(GLUT_DEPTH | GLUT_DOUBLE | GLUT_RGBA);
    glutInitWindowSize(600, 800);
    glutInitWindowPosition(100, 100);
    glutCreateWindow("Happy Birthday!");
}

static void init_scene() {
    glClearColor(0.0f, 0.0f, 0.0f, 0.0f);

    glEnable(GL_NORMALIZE);
    glEnable(GL_DEPTH_TEST);
    glEnable(GL_POLYGON_SMOOTH);

    float lights[] = { 1.0f, 1.0f, 1.0f, 1.0f };

    glLightfv(GL_LIGHT0, GL_AMBIENT, lights);
    glLightfv(GL_LIGHT0, GL_DIFFUSE, lights);
    glLightfv(GL_LIGHT0, GL_SPECULAR, lights);
    glLightfv(GL_LIGHT1, GL_AMBIENT, lights);
    glLightfv(GL_LIGHT1, GL_DIFFUSE, lights);
    glLightfv(GL_LIGHT1, GL_SPECULAR, lights);

    glEnable(GL_LIGHTING);
    glEnable(GL_LIGHT0);
    glEnable(GL_LIGHT1);

    float specularMaterial[] = { 0.2f, 0.5f, 0.3f, 1.0f };

    glMaterialfv(GL_FRONT_AND_BACK, GL_SPECULAR, specularMaterial);
    glMaterialf(GL_FRONT_AND_BACK, GL_SHININESS, 30.0f);
}

static void run() {
    glutDisplayFunc(display);
    glutIdleFunc(display);
    glutVisibilityFunc(visibility);
    glutTimerFunc(1, timer, TIMING_TIMER);
    glutReshapeFunc(reshape);
    glutKeyboardFunc(keyboard);

    toggle_full_screen();
    scene->run();

    glutMainLoop();
}



int App::run(int argc, char **argv) {
    try {
        scene = new Scene();

        init_glut(&argc, argv);
        init_scene();
        ::run();

        delete scene;

        return 0;
    } catch (...) {
        return -1;
    }
}
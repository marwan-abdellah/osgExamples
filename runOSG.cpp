// Simple example using GLUT to create an OpenGL window and OSG for rendering.
// Derived from osgGLUTsimple.cpp and osgkeyboardmouse.cpp

#include <osg/Config>

// Warning disabling
#if defined(_MSC_VER) && defined(OSG_DISABLE_MSVC_WARNINGS)
    // disable warning "glutCreateMenu_ATEXIT_HACK' : unreferenced local function has been removed"
    #pragma warning( disable : 4505 )
#endif

#include <iostream>
#ifdef WIN32
#include <windows.h>
#endif

#ifdef __APPLE__
#  include <GLUT/glut.h>
#else
#  include <GL/glut.h>
#endif

#include <osgViewer/Viewer>
#include <osgManipulator/Dragger>
#include <osgViewer/ViewerEventHandlers>
#include <osgGA/TrackballManipulator>
#include <osgDB/ReadFile>

// Viewer
osg::ref_ptr<osgViewer::Viewer> viewer;

// Window
osg::observer_ptr<osgViewer::GraphicsWindow> window;

// displayCB function
void displayCB(void)
{
    // Update and render the scene graph
    if (viewer.valid())
        viewer->frame();

    // Swap Buffers
    glutSwapBuffers();
    glutPostRedisplay();
}

// Reshaping the window
void reshapeCB( int w, int h )
{
    // Update the window dimensions, in case the window has been resized.
    if (window.valid()) 
    {
        window->resized(window->getTraits()->x, window->getTraits()->y, w, h);
        window->getEventQueue()->windowResize(window->getTraits()->x, window->getTraits()->y, w, h );
    }
}

// Mouse buttons
void mouseButtonCB( int button, int state, int x, int y )
{
    if (window.valid())
    {
        if (state==0) window->getEventQueue()->mouseButtonPress( x, y, button+1 );
        else window->getEventQueue()->mouseButtonRelease( x, y, button+1 );
    }
}

// Mouse movements
void mouseMoveCB( int x, int y )
{
    if (window.valid())
    {
        window->getEventQueue()->mouseMotion( x, y );
    }
}

// Keyboards
void keyboardCB( unsigned char key, int /*x*/, int /*y*/ )
{
    switch( key )
    {
        case 27:
            // Clean up the viewer
            if (viewer.valid())
                viewer = 0;

            glutDestroyWindow(glutGetWindow());
            break;
        default:
            if (window.valid())
            {
                window->getEventQueue()->keyPress( (osgGA::GUIEventAdapter::KeySymbol) key );
                window->getEventQueue()->keyRelease( (osgGA::GUIEventAdapter::KeySymbol) key );
            }
            break;
    }
}

// Main
int main( int argc, char **argv )
{
    glutInit(&argc, argv);

    if (argc < 2)
    {
        std::cout << argv[0] <<": requires filename argument." << std::endl;
        return 1;
    }

    // Load the scene.
    osg::ref_ptr<osg::Node> loadedModel = osgDB::readNodeFile(argv[1]);
    if (!loadedModel)
    {
        std::cout << argv[0] <<": No data loaded." << std::endl;
        return 1;
    }

    // OpenGL stuff
    glutInitDisplayMode( GLUT_DOUBLE | GLUT_RGBA | GLUT_DEPTH | GLUT_ALPHA );
    glutInitWindowPosition( 0, 0);
    glutInitWindowSize( 1280, 800 );
    glutCreateWindow( argv[0] );
    glutDisplayFunc( displayCB );
    glutReshapeFunc( reshapeCB );
    glutMouseFunc( mouseButtonCB );
    glutMotionFunc( mouseMoveCB );
    glutKeyboardFunc( keyboardCB );

    // Create the view of the scene.
    viewer = new osgViewer::Viewer;

    // Convenience method for setting up the viewer so it can be used embedded in an external managed window.
    // Returns the GraphicsWindowEmbedded that can be used by applications to pass in events to the viewer.
    window = viewer->setUpViewerAsEmbeddedInWindow(0,0,1280,800);

    // Scene data compromising the OSG 3D surface model
    viewer->setSceneData(loadedModel.get());

    // Set the CameraManipulator that moves the View's master Camera position in response to events.
    // The parameter resetPosition determines whether manipulator is set to its home position.
    viewer->setCameraManipulator(new osgGA::TrackballManipulator);

    // Add an EventHandler that adds handling of events to the View.
    viewer->addEventHandler(new osgViewer::StatsHandler);

    // Set up windows and associated threads
    viewer->realize();

    // GLUT main loops
    glutMainLoop();
    
    return 0;
}

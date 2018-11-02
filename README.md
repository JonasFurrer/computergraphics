Computergraphics
=================

We are using a couple of C++11 features, so please ensure that you use an up-to-date compiler (GCC 4.7 or higher, Visual Studio 2012). [CMake](www.cmake.org) is used for setting up build environments.


Building under Linux/macOS
--------------------------

Inside the exercise's top-level directory, execute the following commands:

    mkdir build
    cd build
    cmake ..
    make

The last command -- i.e. `make` -- compiles the application. Rerun it whenever you have added/changed code in order to recompile.

To build a pretty documentation use:

    make doc

and open the `index.html` in the html folder with your favourite browser. To build the documentation, you must install Doxygen.

Building with XCode (macOS)
---------------------------

If you wish, you can use the CMake build system to generate an XCode project.
Inside the exercise's top-level directory, execute the following commands:

    mkdir xcode
    cd xcode
    cmake -G Xcode ..
    open RayTracing.xcodeproj

Building under Microsoft Windows (Visual Studio)
------------------------------------------------

* Start the CMake-GUI.
* Open the RayTracing top-level directory as source directory.
* Choose a build directory.
* Click on configure and select Visual Studio as generator.
* Click generate to create the Visual Studio project files.
* Open the Visual Studio solution file that is in the build directory you chose in CMake.


Running the Ray Tracer
----------------------

The program expects two command line arguments: an input scene (`*.sce`) and an output image (`*.tga`). To render the scene with the three spheres, while inside the `build` directory, type:

    ./raytrace ../scenes/spheres/spheres.sce output.tga

If you have finished all exercise tasks, use

    ./raytrace 0

to render all scenes at once.

To set the command line parameters in MSVC or Xcode, please refer to the documentation of these programs (or use the command line...).


Assignment 0: "Hello World"
---------------------------
Edit scenes/solid_color/solid_color.sce to produce the color of your choice and render it to an output file titled "solid_color.tga".

Please also consider setting up a private GitHub repository for your group to collaborate on the future raytracing assignments.

Assignment 1: Planes and Cylinders
----------------------------------
In this assignment, you will implement ray intersections with planes and
cylinders and compute surface normals at the intersection points. The framework
code provided this week is identical to last week's, except `todo` comments
have been inserted in `Plane.cpp` and `Cylinder to indicate where you need to
add your implementations.

If you already set up a GitHub repository last week to collaborate with your
fellow group members, you can copy these TODO comments over to your repository
(or just note where your implementation needs to go and get started).

Please see the assignment handout PDF for more information and submission
instructions. Note: there is a theory exercise for this assignment!

Assignment 2: Phong Lighting
----------------------------
In this assignment you will implement the Phong Lighting Model, shadows and reflections. Fill in the missing code in the file Scene.cpp. Follow the instructions in TODO comments and assignment sheet.

Assignment 3: Triangle Meshes
-----------------------------
In this assignment you will need to edit the Mesh.cpp file.

- Compute vertex normals weighted by opening angles in Mesh::compute_normals().
- Compute the ray-triangle intersection with barycentric coordinates using Cramer's rule within Mesh::intersect_triangle() function. For intersections normals use triangle normals when flat shading or interpolate vertex normals when Phong shading.
- To improve the computation time use the axis-aligned bounding box test for triangle meshes. Implement the ray-box intersection within Mesh::intersect_bounding_box().
- (not graded) To parallelize your computation, install TBB or make sure OpenMP works with your compiler.

For more details, please refer to the assignment handout and lecture+exercise slides.

Assignment 4: OpenGL Hello World
--------------------------------
Your only task for the OpenGL part of Assignment 4 is to make sure the OpenGL
exercise framework code builds and runs on your machine. Please submit a
screenshot of the "Solar System" window running on your machine. Refer to the
assignment handout PDF on Moodle for an example of what you should see if
everything is working properly.

Assignment 5: Transformations and Viewing
-----------------------------------------
In this assignment, you will place the planets, moon, and space ship in the
Solar System scene and set up the view. All of your implementation will be done
in `src/solar_viewer.cpp`. For detailed instructions, please see the assignment
5 handout.

//=============================================================================
//
//   Exercise code for "Introduction to Computer Graphics"
//     by Julian Panetta, EPFL
//
//=============================================================================
#version 140
#extension GL_ARB_explicit_attrib_location : enable


in vec3 v2f_lc_vertex; // vertex position in "eye-coordinates" for the light
layout(location = 0) out float dist;


void main() {
    /** \todo
    * Compute the distance from the light to the scene intersection represented
    * by this fragment.
    **/

    dist = sqrt((v2f_lc_vertex[0]-gl_FragCoord.x)*(v2f_lc_vertex[0]-gl_FragCoord.x) + (v2f_lc_vertex[1]-gl_FragCoord.y)*(v2f_lc_vertex[1]-gl_FragCoord.y) + (v2f_lc_vertex[2]-gl_FragCoord.z)*(v2f_lc_vertex[2]-gl_FragCoord.z));
}

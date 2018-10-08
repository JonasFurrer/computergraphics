//=============================================================================
//
//   Exercise code for the lecture
//   "Introduction to Computer Graphics"
//   by Prof. Dr. Mario Botsch, Bielefeld University
//
//   Copyright (C) Computer Graphics Group, Bielefeld University.
//
//=============================================================================

//== INCLUDES =================================================================

#include "Cylinder.h"
#include "SolveQuadratic.h"
#include <algorithm>    // std::max

#include <array>
#include <cmath>

//== IMPLEMENTATION =========================================================

bool
Cylinder::
intersect(const Ray&  _ray,
          vec3&       _intersection_point,
          vec3&       _intersection_normal,
          double&     _intersection_t) const
{
    const vec3 &dir = _ray.direction;
    const vec3 oc = _ray.origin - center;
    double axNorm = norm(axis);

    const vec3 t1 = cross(axis,oc);
    //double x1 = t1.operator[](0);
    //double y1 = t1.operator[](1);
    //double z1 = t1.operator[](2);

    const vec3 t2 = cross(axis,dir);
    //double x2 = t2.operator[](0);
    //double y2 = t2.operator[](1);
    //double z2 = t2.operator[](2);

    double c = dot(t1, t1) - pow(radius*axNorm,2);
    double b = 2*dot(t1, t2);
    double a = dot(t2 , t2);

    std::array<double, 2> t ; //create array to store all intersection points

    int l  = solveQuadratic(a, b, c, t); //e.g. l = 2 if there are 2 solutions
    double min = 0;

    if(l < 1) return false; //if 0 intersections

    //make general calculations we need for both one and two intersections
    vec3 point;
    vec3 normal;
    min = std::min(t.at(0), t.at(1));
    double dist1 = distance(_ray(min), center);
    a = sqrt( dist1 * dist1 - radius*radius);
    point =  center + a*axis;

    if(l == 1) { //one intersection
       normal = normalize(_ray(min) - point);
       normal = checkNormal(a, min, point, _ray, normal);
   }

    if (l == 2){
        //first check with the closer point of the intersection
        normal = normalize(_ray(min) - point);
        normal = checkNormal(a, min, point, _ray, normal);

        if(a > height/2) {
            //check if the further point (of the infinite cylinder) is the one we actually see
            min = std::max(t.at(0), t.at(1));
            dist1 = distance(_ray(min), center);
            a = sqrt( dist1 * dist1 - radius*radius);
            point =  center + a*axis;

            if(a > height/2){ //a is not inside the finite cylinder
                return false;
            }

            normal = normalize( point -_ray(min) );
            normal = checkNormal(a, min, point, _ray, normal);
        }
    }
    //assign the computed values to the variables we got
    _intersection_t = min;
    _intersection_point =_ray(min);
    _intersection_normal = normal;

    return true;
}


/*
 * In some cases we have to onvert the normal, within this method we check and if needed invert the normal
 */
vec3 Cylinder::checkNormal(double a, double min, vec3 &point, const Ray &_ray, vec3 &normal) const {
    //if the normal is not vertical to the axis, the calculated point is on the opposite direction of the normal, hence we need to invert the normal
    if(abs(dot(normal, axis)) >= 1e-8){
           point = center - a * axis;
           normal = normalize(_ray(min) - point);
       }
    //invert the normal if it doesn't direct in the direction of the ray
    if(dot(_ray.direction, normal) > 0){
           normal = - normal;
       }
    return normal;
}


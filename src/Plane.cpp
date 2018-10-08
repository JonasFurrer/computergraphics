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

#include "Plane.h"
#include <limits>


//== CLASS DEFINITION =========================================================



Plane::Plane(const vec3& _center, const vec3& _normal)
: center(_center), normal(_normal)
{
}


//-----------------------------------------------------------------------------


bool
Plane::
intersect(const Ray& _ray,
          vec3&      _intersection_point,
          vec3&      _intersection_normal,
          double&    _intersection_t ) const
{

/** \todo
 * - compute the intersection of the plane with `_ray`
 * - if ray and plane are parallel there is no intersection
 * - otherwise compute intersection data and store it in `_intersection_point`, `_intersection_normal`, and `_intersection_t`.
 * - return whether there is an intersection in front of the viewer (t > 0)
*/

    const vec3 &dir = _ray.direction;
    const vec3   oc = _ray.origin - center;

    double denom = dot(normal, dir);
if (denom != 0) // your favorite epsilon
{
    double t = (dot(normal, center)-dot(normal, _ray.origin)) / denom;
    if (t > 0.0001f){ 
	_intersection_point  = _ray(t);
	_intersection_normal = normal;
	_intersection_t = t;
	return true; 
	}
}
return false;
}

//=============================================================================

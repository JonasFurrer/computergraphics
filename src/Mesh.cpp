//=============================================================================
//
//   Exercise code for the lecture
//   "Introduction to Computer Graphics"
//   by Prof. Dr. Mario Botsch, Bielefeld University
//
//   Copyright (C) Computer Graphics Group, Bielefeld University.
//
//=============================================================================
//   Done by: Jonas Furrer, Alessandro Esposito
//   With help of:
//   https://en.wikipedia.org/wiki/M%C3%B6ller%E2%80%93Trumbore_intersection_algorithm
//   https://www.scratchapixel.com/lessons/3d-basic-rendering/ray-tracing-rendering-a-triangle/moller-trumbore-ray-triangle-intersection
//   https://www.scratchapixel.com/lessons/3d-basic-rendering/minimal-ray-tracer-rendering-simple-shapes/ray-box-intersection
//   http://www.cs.utah.edu/~awilliam/box/box.pdf
//   https://gamedev.stackexchange.com/questions/18436/most-efficient-aabb-vs-ray-collision-algorithms
//
//   We also worked in the pool hour with another group so our solutions might be similar
//== INCLUDES =================================================================

#include "Mesh.h"
#include <fstream>
#include <string>
#include <stdexcept>
#include <limits>


//== IMPLEMENTATION ===========================================================


Mesh::Mesh(std::istream &is, const std::string &scenePath)
{
    std::string meshFile, mode;
    is >> meshFile;

    // load mesh from file
    read(scenePath.substr(0, scenePath.find_last_of('/') + 1) + meshFile);

    is >> mode;
    if      (mode ==  "FLAT") draw_mode_ = FLAT;
    else if (mode == "PHONG") draw_mode_ = PHONG;
    else throw std::runtime_error("Invalid draw mode " + mode);

    is >> material;
}


//-----------------------------------------------------------------------------


bool Mesh::read(const std::string &_filename)
{
    // read a mesh in OFF format


    // open file
    std::ifstream ifs(_filename);
    if (!ifs)
    {
        std::cerr << "Can't open " << _filename << "\n";
        return false;
    }


    // read OFF header
    std::string s;
    unsigned int nV, nF, dummy, i;
    ifs >> s;
    if (s != "OFF")
    {
        std::cerr << "No OFF file\n";
        return false;
    }
    ifs >> nV >> nF >> dummy;
    std::cout << "\n  read " << _filename << ": " << nV << " vertices, " << nF << " triangles";


    // read vertices
    Vertex v;
    vertices_.clear();
    vertices_.reserve(nV);
    for (i=0; i<nV; ++i)
    {
        ifs >> v.position;
        vertices_.push_back(v);
    }


    // read triangles
    Triangle t;
    triangles_.clear();
    triangles_.reserve(nF);
    for (i=0; i<nF; ++i)
    {
        ifs >> dummy >> t.i0 >> t.i1 >> t.i2;
        triangles_.push_back(t);
    }


    // close file
    ifs.close();


    // compute face and vertex normals
    compute_normals();

    // compute bounding box
    compute_bounding_box();


    return true;
}


//-----------------------------------------------------------------------------

// Determine the weights by which to scale triangle (p0, p1, p2)'s normal when
// accumulating the vertex normals for vertices 0, 1, and 2.
// (Recall, vertex normals are a weighted average of their incident triangles'
// normals, and in our raytracer we'll use the incident angles as weights.)
// \param[in] p0, p1, p2    triangle vertex positions
// \param[out] w0, w1, w2    weights to be used for vertices 0, 1, and 2
void angleWeights(const vec3 &p0, const vec3 &p1, const vec3 &p2,
                  double &w0, double &w1, double &w2) {
    // compute angle weights
    const vec3 e01 = normalize(p1-p0);
    const vec3 e12 = normalize(p2-p1);
    const vec3 e20 = normalize(p0-p2);
    w0 = acos( std::max(-1.0, std::min(1.0, dot(e01, -e20) )));
    w1 = acos( std::max(-1.0, std::min(1.0, dot(e12, -e01) )));
    w2 = acos( std::max(-1.0, std::min(1.0, dot(e20, -e12) )));
}


//-----------------------------------------------------------------------------

void Mesh::compute_normals()
{
    // compute triangle normals
    for (Triangle& t: triangles_)
    {
        const vec3& p0 = vertices_[t.i0].position;
        const vec3& p1 = vertices_[t.i1].position;
        const vec3& p2 = vertices_[t.i2].position;
        t.normal = normalize(cross(p1-p0, p2-p0));
    }

    // initialize vertex normals to zero
    for (Vertex& v: vertices_)
    {
        v.normal = vec3(0,0,0);
    }
    
    /** \todo
     * In some scenes (e.g the office scene) some objects should be flat
     * shaded (e.g. the desk) while other objects should be Phong shaded to appear
     * realistic (e.g. chairs). You have to implement the following:
     * - Compute vertex normals by averaging the normals of their incident triangles.
     * - Store the vertex normals in the Vertex::normal member variable.
     * - Weigh the normals by their triangles' angles.
     */

    /** \todo
     * In some scenes (e.g the office scene) some objects should be flat
     * shaded (e.g. the desk) while other objects should be Phong shaded to appear
     * realistic (e.g. chairs). You have to implement the following:
     * - Compute vertex normals by averaging the normals of their incident triangles.
     * - Store the vertex normals in the Vertex::normal member variable.
     * - Weigh the normals by their triangles' angles.
     */

    for(Triangle q: triangles_)
	{
		double w0, w1, w2;
		angleWeights(vertices_[q.i0].position,vertices_[q.i1].position,vertices_[q.i2].position,w0,w1,w2);
		vertices_[q.i0].normal += w0*q.normal ;
		vertices_[q.i1].normal += w1*q.normal ;
		vertices_[q.i2].normal += w2*q.normal ;

	}
	
	for(Vertex v: vertices_){

		v.normal = normalize(v.normal);

	}


}


//-----------------------------------------------------------------------------


void Mesh::compute_bounding_box()
{
    bb_min_ = vec3(std::numeric_limits<double>::max());
    bb_max_ = vec3(std::numeric_limits<double>::lowest());

    for (Vertex v: vertices_)
    {
        bb_min_ = min(bb_min_, v.position);
        bb_max_ = max(bb_max_, v.position);
    }
}


//-----------------------------------------------------------------------------


bool Mesh::intersect_bounding_box(const Ray& _ray) const
{
    std::numeric_limits<double>::max();
    std::numeric_limits<double>::min();
    // r.dir is unit direction vector of ray
    vec3 dirfrac = vec3(0,0,0);
    dirfrac[0] = 1.0 / _ray.direction[0];
    dirfrac[1] = 1.0 / _ray.direction[1];
    dirfrac[2] = 1.0 / _ray.direction[2];
// lb is the corner of AABB with minimal coordinates - left bottom, rt is maximal corner
// r.org is origin of ray
    double t1 = (bb_min_[0] - _ray.origin[0])*dirfrac[0];
    double t2 = (bb_max_[0] - _ray.origin[0])*dirfrac[0];
    double t3 = (bb_min_[1] - _ray.origin[1])*dirfrac[1];
    double t4 = (bb_max_[1] - _ray.origin[1])*dirfrac[1];
    double t5 = (bb_min_[2] - _ray.origin[2])*dirfrac[2];
    double t6 = (bb_max_[2] - _ray.origin[2])*dirfrac[2];

    double tmin = calcMax(calcMax(calcMin(t1, t2), calcMin(t3, t4)), calcMin(t5, t6));
    double tmax = calcMin(calcMin(calcMax(t1, t2), calcMax(t3, t4)), calcMax(t5, t6));

// if tmax < 0, ray (line) is intersecting AABB, but the whole AABB is behind us
    if (tmax < 0)
    {
        return false;
    }

// if tmin > tmax, ray doesn't intersect AABB
    if (tmin > tmax)
    {
        return false;
    }

    return true;
    
}

double& Mesh::calcMax(double& a, double& b) const
{
    if (a > b) {
        return a;
    }
    return b;
}

double& Mesh::calcMin(double& a, double& b) const
{
    if (a < b) {
        return a;
    }
    return b;
}


//-----------------------------------------------------------------------------


bool Mesh::intersect(const Ray& _ray,
                     vec3&      _intersection_point,
                     vec3&      _intersection_normal,
                     double&    _intersection_t ) const
{
    // check bounding box intersection
    if (!intersect_bounding_box(_ray))
    {
        return false;
    }

    vec3   p, n;
    double t;

    _intersection_t = NO_INTERSECTION;

    // for each triangle
    for (const Triangle& triangle : triangles_)
    {
        // does ray intersect triangle?
        if (intersect_triangle(triangle, _ray, p, n, t))
        {
            // is intersection closer than previous intersections?
            if (t < _intersection_t)
            {
                // store data of this intersection
                _intersection_t      = t;
                _intersection_point  = p;
                _intersection_normal = n;
            }
        }
    }

    return (_intersection_t != NO_INTERSECTION);
}


//-----------------------------------------------------------------------------


bool
Mesh::
intersect_triangle(const Triangle&  _triangle,
                   const Ray&       _ray,
                   vec3&            _intersection_point,
                   vec3&            _intersection_normal,
                   double&          _intersection_t) const
{
    const vec3& p0 = vertices_[_triangle.i0].position;
    const vec3& p1 = vertices_[_triangle.i1].position;
    const vec3& p2 = vertices_[_triangle.i2].position;
    
     /** \todo
    * - intersect _ray with _triangle
    * - store intersection point in `_intersection_point`
    * - store ray parameter in `_intersection_t`
    * - store normal at intersection point in `_intersection_normal`.
    * - Depending on the member variable `draw_mode_`, use either the triangle
    *  normal (`Triangle::normal`) or interpolate the vertex normals (`Vertex::normal`).
    * - return `true` if there is an intersection with t > 0 (in front of the viewer)
    *
    * Hint: Rearrange `ray.origin + t*ray.dir = a*p0 + b*p1 + (1-a-b)*p2` to obtain a solvable
    * system for a, b and t.
    * Refer to [Cramer's Rule](https://en.wikipedia.org/wiki/Cramer%27s_rule) to easily solve it.
     */

    const float kEpsilon = 1E-2;
    vec3 edge1, edge2, h, s, q;
    float a,f,u,v;
    edge1 = p1 - p0;
    edge2 = p2 - p0;
    h = cross(_ray.direction, edge2);
    a = dot(edge1, h);
    if (a > -kEpsilon && a < kEpsilon)
        return false;    // This ray is parallel to this triangle.
    f = 1.0/a;
    s = _ray.origin - p0;
    u = f * dot(s, h);
    if (u < 0.0 || u > 1.0)
        return false;
    q = cross(s, edge1);
    v = f * dot(_ray.direction, q);
    if (v < 0.0 || u + v > 1.0)
        return false;
    // At this stage we can compute t to find out where the intersection point is on the line.
    float t = f * dot(edge2, q);

	
	if(draw_mode_ == FLAT)
	{  
		_intersection_normal = normalize(_triangle.normal); 
	}

	else if(draw_mode_ == PHONG)
	{ 
		_intersection_normal = normalize((1-u-v)*vertices_[_triangle.i0].normal + u*vertices_[_triangle.i1].normal + v*vertices_[_triangle.i2].normal);	
	}

	if(t > kEpsilon){
	
	_intersection_point = _ray.origin + t*_ray.direction;
	_intersection_t = t;
    return true; 
	}else{

	return false;
	}
	
}


//=============================================================================

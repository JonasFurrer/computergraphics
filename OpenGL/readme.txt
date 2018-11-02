Assignment 5, Alessandro Esposito 16-101-487 & Jonas Furrer 16-122-996

First of all, one of us and the member of another group worked together again during the pool-hours. That's the reason why some of the code might be like the other ones.

1. 

We impplemented the update_body_positions() method. Since we don't have to move the planets in y direction,
we set the y-value to 0. x and z are set by simply taking the planets distance to (0,0,0) and then multypling bi the cos or sin of it orbital angle.
For the ship we used its position plus the direction * speed it moves.

problems: none

2. 

We differentiated the state of being in a ship or not.
If we are looking at a planet we can simply take its position for the center and 
for the eye position we add the respective y or x angle multiplied by the distance factor and the radius.
If we are looking at the spaceship we can take its position as center and take a little offset for the y-axis and 
for the x and z axis we have to subtract the fraction of the direction so we are always behind the ship.

problems: taking the right angles and noticing that they have to be converted to rad. Position of ship eye was difficult.

3.

We created a new method, to make the draw_scene method more efficient, which is called draw_planet.(during pool).
We simply took the sun as example and added the translation of each object to the m_matrix, since the planets are not at the center of the world-coordinate-system. 
We also draw the stars with the same method, because it has the same logic. 
We then added the ship manually using its position radius and angle. Otherwise this was pretty straightforward.

problems: none

4. 

We added the dist_factor to where we were setting uf the eye, so we could zoom in and out. 
To turn left right up and down we used the x_angle and y_angle and took their respective sin and 
cos values as it was described in the task and also added it at the right places to the eye position.
For the SpaceShip we didn't have to zoom in so we ignored the dist_factor and we didn't have to make an x_angle rotation, simply up and down.

problems: none



The first 2 parts were done by one student and the other 2 parts by the other one.


#version 3.7;

#include "colors.inc"
#include "shapes.inc"
#include "textures.inc"

#declare chaya = color_map {
  [0.0 color White filter 1]
  [0.5 color Yellow]
  [1.0 color White filter 1]
}

/*
box {
  <-1, -1, -1>, < 1,  1,  1>
  rotate <0, -20, 0>
  finish {
    ambient 0.1
    diffuse 0.6
  }
  pigment { Green }
}
*/

quadric {
  <0, 0, 0>, <0, 1, 0>, <1, 0, 0>, 1

  pigment {
    bumps
    turbulence 1
    lambda 50
    frequency 1
  }
}

plane {
  y, -1.0
  pigment {
    bumps
    color_map {chaya}
  } 
}

light_source { <5, 30, -30> color White }
light_source { <-5, 30, -30> color White }

sky_sphere {
  pigment {
    gradient y
    color_map {
      [0.000 0.002 color rgb <1.0, 0.2, 0.0>
                   color rgb <1.0, 0.2, 0.9>]
      [0.002 0.200 color rgb <0.8, 0.5, 0.0>
                   color rgb <0.2, 0.2, 0.3>]
    }
    scale 2
    translate -1
  }
  pigment {
    bozo
    turbulence 0.65
    octaves 3
    omega 0.21
    lambda 3
    color_map {
        [0.0 0.1 color rgb <0.85, 0.85, 0.85>
                 color rgb <0.75, 0.75, 0.75>]
        [0.1 0.5 color rgb <0.75, 0.75, 0.75>
                 color rgbt <1, 1, 1, 1>]
        [0.5 1.0 color rgbt <1, 1, 1, 1>
                 color rgbt <1, 1, 1, 1>]
    }
    scale <0.2, 0.5, 0.2>
  }
  rotate -135*x
}

camera {
  location <0.0, 1.0, -10.0>
  look_at  <0.0, 1.0,  0.0>
  right image_width/image_height*x
} 

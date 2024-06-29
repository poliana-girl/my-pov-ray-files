#include "textures.inc"
#include "shapes.inc"
#include "colors.inc"


camera {
  location <0.0, 1.0, -10.0>
  look_at  <0.0, 0,  0>
  right image_width/image_height*x
}


light_source { <5, 30, -30> color White }


sky_sphere {
  pigment {
    gradient y
    color_map {
      [0.000 0.002 color rgb <1.0, 0.2, 0.0>
                   color rgb <1.0, 0.2, 0.0>]
      [0.002 0.200 color rgb <0.8, 0.1, 0.0>
                   color rgb <0.2, 0.2, 0.3>]
    }
    scale 2
    translate -1
  }
  pigment {
    bozo
    turbulence 0.65
    octaves 4
    omega 0.21
    lambda 3
    color_map {
        [0.0 Yellow]
        [0.7 LightBlue]
        [1.0 Green]
    }
    scale <0.2, 0.3, 0.2>
  }
  //rotate -135*x
}


sor {
  7,
  <0.000000, 0.000000>
  <0.118143, 0.000000>
  <0.620253, 0.540084>
  <0.210970, 0.827004>
  <0.194093, 0.962025>
  <0.286920, 1.000000>
  <0.468354, 1.033755>
  open

  texture {Shadow_Clouds}
  finish {
    ambient 1
    diffuse 0
    phong 0.5
  }

  rotate x*-40 + clock
  scale 5
  translate <0, -2, 0>
}


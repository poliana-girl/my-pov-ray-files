#include "colors.inc"
#include "shapes.inc"
#include "textures.inc"

camera {
  right x*900/900
  location  <0, 10, -7>
  look_at   <0, 0, 0>
}

light_source { <5, 30, -30> color White }
light_source { <-5, 30, -30> color White }


plane {
  y, 0
  texture {
    pigment {
      Blue_Agate
    }
    finish {
      diffuse 0.4
      ambient 0.2
      phong 1
      phong_size 100
      reflection 0.25
    }
  }
}


julia_fractal {
  <0, 0.5, 0.5, 0>
  quaternion
  finish {
      ambient 0.1
      diffuse 0.6
      phong 1
    }
    pigment {Sapphire_Agate}
  scale 4
  translate <0, 1, 0>
}
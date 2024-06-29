#include "colors.inc"
#include "shapes.inc"
#include "textures.inc"

camera {
  location <0, 0, -10>
  look_at <0,  0,   0>
  right image_width/image_height*x
}

light_source {
  <5, 30, -30>
  color White
}

sky_sphere {
  pigment {
    Candy_Cane
  }
}

julia_fractal {
  <-0.2, 0.2, 0, 0.7>
  quaternion
  sqr

  pigment {
    bozo
    turbulence 0.65
    omega 0.21
    lambda 3
    color_map {
        [0.3 Yellow]
        [0.7 LightBlue]
        [1.0 Blue]
    }
    scale <0.2, 0.3, 0.2>
  }

  scale 5
}

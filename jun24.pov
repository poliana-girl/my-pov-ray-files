#include "colors.inc"
#include "textures.inc"

light_source {
  <0, 100, -30>
  color White
}

camera {
  location <0, 20, -30> 
  look_at <0, 0, 0>
  right image_width/image_height*x 
}

sky_sphere {
  pigment {
    agate 
    frequency 0.4
    color_map {
      [0.0 rgb <0.6, 0.6, 0.7>]
      [0.5 rgb <0.2, 0.1, 1>]
    }
    scale 0.1 * clock
  }
}

 


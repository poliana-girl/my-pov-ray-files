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
    frequency 0.07
    color_map {
      [0.0 rgb <0.6, 0.6, 0.7>]
      [0.5 rgb <0.2, 0.1, 1>]
    }
    scale 0.1 * clock
  }
}

poly {
  2, 
  <0.3 * atan(clock * 50), 0, acos(clock * 5), 1 - sin(clock * 16), bitwise_or(clock, 50), bitwise_or(clock * 10, 1 - clock), 0.4 + sin(clock), tan(clock), cos(clock), pow(clock, 2)>
  pigment {
    color Yellow
  }

  finish {
    ambient 0.5
  }

  rotate <0, clock, clock>

  bounded_by {
    box {
      <-10, -10, -10>,
      <10, 10, 10>
    }
  }
}



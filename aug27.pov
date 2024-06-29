#include "colors.inc"
#include "textures.inc"
#include "stars.inc"

camera {
  location <0.0, 10, -10.0>
  look_at  <0.0, 0,  0>
  rotate <clock * 360, 0, 0>
  right image_width/image_height*x
}

light_source {
  <5, 30, -30>
  color White
}

sphere {
  <0, 10, -10>, 200

  pigment {
    bozo
    color_map {
      [0.7 Black]
      [1.0 White]
    }
  }
}

julia_fractal {
  <(sin(clock * 3 * pi) + 1) / 2, (sin(-clock * 2 * pi) + 1) / 2, 0.3, 0.2>
  quaternion
  sqr
  
  texture {
    PinkAlabaster
  }

  finish {
    phong 1
    ambient 0.2
    diffuse 0.5
    reflection 0.3
  }

  scale 3
}

lathe {
  linear_spline
  6
  <2, 0>,
  <1, 5>,
  <3, 4>,
  <7, 8>,
  <5, 0>,
  <2, 0>

  pigment {
    Clear
  }

  pigment {
    bozo
    turbulence 0.65
    octaves 5
    color_map {
      [0.0 rgbt <1, 0, 0, 0.5>]
      [0.5 rgbt <0, 1, 0, 0.5>]
    }
  }

  interior {
    ior 1.6
  }

  finish {
    phong 1
  }

  scale 0.2  
  rotate <sin(clock * pi) * 180, cos(clock * pi) * 90, 0>
  translate <-3, 0, -5>
}

isosurface {
  function { pow(x, 2 + clock) / y }
  max_gradient 4
  contained_by { box { -5, 5 } }
  
  pigment {
    ripples
    color_map {
      [0.0 Black]
      [0.5 White]
    }
  }

  pigment {
    image_map {
      png "brakeman.png"
    }
    scale 10
  }
  
  rotate <0, clock * 360, 0>
  translate <0, 0, 10>
}

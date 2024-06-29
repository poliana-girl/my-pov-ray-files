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
    image_map {
      png "epicgay.png"
      map_type 1
    } 
  }
}

julia_fractal {
  <-0.2, 0.2, 0, 0.6>
  quaternion
  sqr

  pigment {
    bozo
    turbulence 0.2
    omega 0.6
    lambda 1
    color_map {
        [0.3 Yellow]
        [0.7 LightBlue]
        [1.0 Blue]
    }
    scale 0.05
  }

  scale 4
}

#declare glass = pigment {
  rgbt <0.3, 0.5, 0.8, 0.1>
  filter 0.5
}

plane {
  <0, 1, 0>, 1

  
  pigment {
    gradient y
    color_map {
      [0.5 color Red]
      [0.6 color Blue filter 1]
    }
  }

  translate <0, -10, 0>
}

//
//plane {
//  <1, 0, 0>, 1
//
//  texture {Jade}
//  texture {glass}
//  
//  translate <-10, 0, 0>
//}
//

//plane {
//  <1, 0, 0>, 1
//
//
//  texture {Jade}
//  texture {
//    glass
//    filter 1
//  }
//
//  
//  translate <10, 0, 0>
//}

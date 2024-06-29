#include "colors.inc"
#include "textures.inc"

light_source {
  <0, 500, -30>
  color White
}



camera {
  location <0, 20, -30> 
  look_at <0, 0, 0>
  right image_width/image_height*x 
  angle 0
}

sky_sphere {
  pigment {
    bozo 
    color_map {
      [0.5 + (clock / 3) Black]
      [0.9 Yellow]
    }
    scale 0.2
  }
}

//box {
//  <1, 1, 1>
//  <-1, -1, -1>
//
//  pigment {
//    image_map {png "20230531_095537.png"}
//  }
//}


height_field {
  jpeg "3d.jpg"

  pigment {
    image_map {jpeg "img3.jpg"}
    scale 0.3 * ((1 + sin(clock)) / 2)
  }

  translate <-0.5, -0.5, 0>
  rotate <30*clock, 500*clock, 50*clock>
  scale <25, 1, 25>

}


superellipsoid {
  <2, 5>
}

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
}

sky_sphere {
  pigment {
    bozo 
    frequency 3 + (clock * 2)
    color_map {
      [0.0 rgb <0.6, 0.6, 143/255>]
      [0.5 rgb <0.2, 0.2, 1>]
    }
    scale 0.1
  }
}

height_field {
  jpeg "waterfall_blur.jpg"
  smooth
  texture {
    
    Shadow_Clouds
    scale 1.001 - clock 
  }

  finish {
    ambient 0
    diffuse 0.15
  }
  
    translate <-0.5, 0, -0.5>
  scale <25, 5, 25>
rotate <-50 + (clock  * -100), -35, 90>

}


superellipsoid {
  <0.5, 0.6>

  pigment {rgbf  <0.7, 0.7, 0.7, 0.9>}

  finish {
      ambient 0.1 
      diffuse 0.5
      reflection 0.25
      phong 0.5
      phong_size 10
      specular 0.5
      roughness 0.001
    }

    interior {
      ior 1.3
    }

  scale 4
  rotate <0 + clock * 720, 23 + clock * 720, 0 + clock * 720>
  translate <0, 6, -10>
}

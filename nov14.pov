#include "colors.inc"
#include "textures.inc"

light_source {
  <0, 500, -30>
  color White
}



camera {
  location <0, 100, -100> 
  look_at <0, 0, 0>
  right image_width/image_height*x 
}

sky_sphere {
  pigment {
    mandel 50
    color_map {
      [0.0 Blue]
      [0.2 Yellow]
      [0.4 Red]
      [0.6 rgb <0, 0, 0.4>]
    }
    
  }
}

#macro MakeLong(rot, trans, colormod)
  box {
    <0, 5, 0>  
    <-0.5, -1, -0.5>

    pigment {
      granite
      color_map {
        [(0.0 + colormod) rgb <0, 1, 257/255>]
        [0.2 rgb <1, 0, 191/255>]
        [0.8 rgb <238/255, 1, 0>]
      }
    }

    finish {
      ambient 0.4
    }

    scale 5

    rotate rot
    translate trans
  }
#end 

#for (Count, 0, 25) 
  MakeLong(0, <Count * sin(floor(Count)), Count * cos(floor(Count)), Count * sin(floor(-Count))>*5, 0.2)
#end

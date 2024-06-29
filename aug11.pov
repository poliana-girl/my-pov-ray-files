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

#macro MakeBox(turb, rot, trans)
  box {
    <0.5, 0.5, 0.5>,
    <-0.5, -0.5, -0.5>
    pigment {
      gradient y
      
      color_map {
        Lightning_CMap1
      }

      turbulence turb
    }

    /*
    normal {
      bumps 0.5
    }
    */
    
    scale 1
    rotate rot
    translate trans
  }
#end

#for (Count, 0, 25)
  MakeBox(Count/25, 45, <Count, sin(Count), Count>)
#end

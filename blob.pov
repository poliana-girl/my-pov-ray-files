#include "colors.inc"    // The include files contain
#include "stones.inc"    // pre-defined scene elements

#include "textures.inc"    // pre-defined scene elements
#include "shapes.inc"
#include "glass.inc"
#include "metals.inc"
#include "woods.inc"
#include "skies.inc"

#declare OceanArea = texture {
    pigment {
      bozo
      turbulence .5
      lambda 2
      color_map {
        [0.00, 0.33 color rgb <0, 0, 1>
                    color rgb <0, 0, 1>]
        [0.33, 0.66 color rgbf <1, 1, 1, 1>
                    color rgbf <1, 1, 1, 1>]
        [0.66, 1.00 color rgb <0, 0, 1>
                    color rgb <0, 0, 1>]
      }
    }
  }

camera {
	right x*2000/2000 // do x*width/height to set aspect ratio correctly.

  location <0, 0, -7>
  look_at  <0, 1,  0>
}

sky_sphere {
    pigment {
      gradient y
      color_map {
        [0.000 0.002 color Gold
                     color Gold]
        [0.002 0.200 color MediumBlue
                     color Gold]
      }
      scale 2
      translate -1
    }
    rotate -135*x
  }

blob {
	threshold 0.6
		sphere { <0.75, 0, 0>, 1, 1 }
		sphere { <0.375, 0.64952, 0>, 1, 1 }
		sphere { <-0.375, -0.64952, 0>, 1, 1 }
		cylinder {
	    <0, 1, 0>,     // Center of one end
	    <1, 2, 3>,     // Center of other end
	    1, 5
  	}
	scale 2

	/**
	pigment {
  gradient x
  color_map {
    [0.0 color Yellow]
    [0.3 color Cyan]
    [0.6 color Magenta]
    [1.0 color Cyan]
    }
  }
	**/

	//pigment {color Col_Glass_Beerbottle}

  //finish {phong 1} very shiny finish!
  pigment {
  	image_map {
  		png "klee.png"
  		map_type 1
  	}
  }
  finish {ambient rgb <0.3, 0.1, 0.1> phong 0.6}

}

light_source { <2, 4, -3> color White}
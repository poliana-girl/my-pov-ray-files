#include "colors.inc"    // The include files contain
#include "stones.inc"    // pre-defined scene elements

#include "textures.inc"    // pre-defined scene elements
#include "shapes.inc"
#include "glass.inc"
#include "metals.inc"
#include "woods.inc"
#include "skies.inc"

#include "rand.inc"

camera {
	right x*900/900 // do x*width/height to set aspect ratio correctly.

	location <0, 7, -7>
	look_at  <1, 1,  2>
}

//background { color White }


/*
box {
	<-1, -1,  -1> //near lower left corner
	<1,  1, 1> //far upper right corner
	pigment {
  	image_map {
  		png "trains.png"
  		map_type 1
  	}
  }
	rotate y*20

	finish {ambient rgb <0.3, 0.1, 0.1> phong 0.6}
}
*/

blob {
	threshold 0.6
	sphere {VRand(1)*2, (SRand(1) + 1), 1}
	sphere {VRand(1)*2, (SRand(1) + 1), 1}
	sphere {VRand(1), (SRand(1) + 1), 1}
	cylinder { <0, 1, 0>, <1, 2, 1>, 1, 2 }
	scale 2

  pigment {
  	image_map {
  		png "trains.png"
  		map_type 1
  	}
  }
  finish {ambient rgb <0.3, 0.1, 0.1> phong 0.6}

}


plane {
	<0, -1, 0>, 1
	texture {
		pigment {
		  bozo
		  turbulence .9
		  lambda 1
		  color_map {
		    [0.00, 0.33 color Green
		                color Red]
		    [0.33, 0.66 color Yellow
		                color Blue]
		    [0.66, 1.00 color Cyan
		                color Magenta]
		  }
		}
	}
}

/*
light_source {
	<5, 5, -5>, White
	spotlight
	point_at <0, 0, 0>
	falloff 180
}
*/

light_source { <100, 200, -150>, 1 }


sky_sphere {
  pigment {
    gradient y
      color_map {
        [ 0.5  color CornflowerBlue ]
        [ 1.0  color MidnightBlue ]
        }
    scale 2
    translate -1
    }
  emission rgb <0.8,0.8,1>
}
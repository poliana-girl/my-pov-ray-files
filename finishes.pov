#include "colors.inc"
#include "textures.inc"

camera {
  location  <0, 10, -7>
  look_at   <0, 1, 2>
}

 plane {
  y, -1
  texture {
    pigment {
      checker
      color rgb<0.5, 0, 0>
      color rgb<0, 0.5, 0.5>
    }
    finish {
      diffuse 0.4
      ambient 0.2
      phong 1
      phong_size 100
      reflection 0.25
    }
  }
}

/*
sphere {
<0, 1, 2>, 2
	texture {
	  pigment { color Yellow } //Yellow is pre-defined in COLORS.INC
	  finish { phong 1 }
	  normal { bumps 0.4 scale 0.2 }
	}
}
*/

/*
//real wood sphere
sphere {
<0, 1, 2>, 2
	texture {
	  pigment {
	    wood
	    color_map {
	      [0.0 color DarkTan]
	      [0.9 color DarkBrown]
	      [1.0 color VeryDarkBrown]
	    }
	    turbulence 0.05
	    scale <0.2, 0.3, 1>
	  }
	  finish { phong 1 }
	}
}
*/

/*
//fake lookin ahh sphere
sphere {
<0, 1, 2>, 2
texture {
  pigment {
    wood
    color_map {
      [0.0 color Red]
      [0.5 color Red]
      [0.5 color Blue]
      [1.0 color Blue]
    }
    turbulence 0.05
    scale <0.2, 0.3, 1> //scale the pattern (in this example it is squished)
  }
  finish { phong 1 }
}
}
*/

  sphere {
    <0, 1, 2>, 2
    texture {
      pigment {
      	Blood_Marble
      	scale 4
      }
      finish { Shiny } // pre-defined in finish.inc
    }
  }

light_source {
  <2, 20, -3>
  color White
  spotlight
  radius 15
  falloff 18
  tightness 10
  area_light <1, 0, 0>, <0, 0, 1>, 2, 2
  adaptive 1
  jitter
  point_at <0, 1, 2>
}
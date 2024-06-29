#include "colors.inc"    // The include files contain
#include "stones.inc"    // pre-defined scene elements

#include "textures.inc"    // pre-defined scene elements
#include "shapes.inc"
#include "glass.inc"
#include "metals.inc"
#include "woods.inc"

camera {
  location <0, 2, -3>
  look_at  <0, 1,  2>
}

box {
	<-1, 0,  -1> //near lower left corner
	<1,  0.5, 3> //far upper right corner
	texture {
		T_Stone25
		scale 4
	}
	rotate y*20
}

light_source { <2, 4, -3> color White}
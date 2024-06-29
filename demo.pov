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

sphere {
  <0, 1, 2>, 2
  texture {
    pigment { color rgb  <1.0, 0.9, 0.8> }
  }
}

light_source { <2, 4, -3> color White}
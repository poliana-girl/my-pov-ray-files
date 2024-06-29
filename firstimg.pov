#include "colors.inc"
#include "textures.inc"
#include "shapes.inc"

background { color Cyan }
camera {
  location <0, 2, -3>
  look_at  <0, 1,  2>
}
sphere {
  <0, 1, 2>, 2
  
 pigment {
   brick pigment{Jade}, pigment{Black_Marble}
 } 

}

light_source { <5, 30, -30> color White }

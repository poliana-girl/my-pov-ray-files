#include "colors.inc"
#include "shapes.inc"
#include "textures.inc"

camera {
  location  <0, 10, -10>
  look_at   <7, 3, 0>
}

light_source { <5, 30, -30> color White }
light_source { <-5, 30, -30> color White }


sky_sphere {
    pigment {
      checker color Gray65 color Gray30
    }
    rotate -135*x
  }


plane {
  y, 0
  texture {
    
    pigment {
      Blue_Agate
    }
    finish {
      diffuse 0.4
      ambient 0.2
      phong 1
      phong_size 100
      reflection 0.25
    }
    

    //texture {NBGlass}
  }
}


julia_fractal {
  <0.4, 2, 0.5, 0.2>
  hypercomplex
  sin
  max_iteration 3
  finish {
      ambient 0.5
      diffuse 0.6
      phong 1
      phong_size 100
    }
    texture {
    pigment {
    color Yellow
  }
    finish { phong 1 }
    normal { ripples 0.4 scale 0.2 }
  }
  scale 4
  translate <0, 0, 0>
}

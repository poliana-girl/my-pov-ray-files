#include "textures.inc"
#include "colors.inc"
#include "shapes.inc" 
#include "glass.inc"

camera {
  location <0, sin(clock/15)*5, clock>
  look_at  <0.0, sin(clock/15)*5, 5 + clock>
  right image_width/image_height*x
}

sky_sphere {
  pigment {
    bozo
    turbulence 0.65
    omega 0.21
    lambda 3
    color_map {
        [0.3 Black]
        [0.7 LightBlue]
        [1.0 Green]
    }
    scale <0.2, 0.3, 0.2>
  }
  //rotate -135*x
}

light_source { <5, 30, -30> color White }


#for (ZCount, 0, 25)
  difference {
    prism {
      linear_sweep
      linear_spline
      0, // sweep the following shape from here ...
      1, // ... up through here
      7, // the number of points making up the shape ...
      <3,5>, <-3,5>, <-5,0>, <-3,-5>, <3, -5>, <5,0>, <3,5>
      pigment { Green }
      rotate <90, 0, 0>
      translate <0, 0, 5>
    }

    prism {
      linear_sweep
      linear_spline
      0, // sweep the following shape from here ...
      1, // ... up through here
      7, // the number of points making up the shape ...
      <3,5>, <-3,5>, <-5,0>, <-3,-5>, <3, -5>, <5,0>, <3,5>
      pigment { Blue }
      rotate <90, 0, 0>
      scale <0.8, 0.8, 3>
      translate <0, 0, 4>
    }

    translate <0, sin(ZCount/15)*5, ZCount>
  }

  #declare Test = mod(ZCount,25);

  #if (Test)
    
  #else
    light_source { <0, sin(ZCount/15)*5, ZCount> color White }
  #end

 #end

julia_fractal {
  <-0.083 + clock/25, 0.0 + clock/25, -0.83,-0.025>
  quaternion
  sqr
  max_iteration 8
  precision 15

  pigment {Col_Glass_Orange}

  finish { reflection {0.5} ambient 0.5 diffuse 1 }

  //scale <0.1, 0.1, 0.1>
  translate <0, sin(clock/15)*5, clock + 10>
}



#include "colors.inc"

camera {
  right x*900/900
  location <0, 20, -30> 
  look_at <0, 0, 0>
  angle 90
}

light_source {<-20,75,-100> White}


#declare i = 0;

blob {
	threshold 0.5

	#while (i < 10)
	sphere {
		<2*cos(i), 1*i, 3*sin(i)>, 3, 1,
			pigment {
				color Blue
				}
			}
	}
	#declare i = i + 1;
#end

	scale 2
}

sky_sphere {
  
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
    
  emission rgb <0.8,0.8,1>
}




plane {y,0 pigment {color GreenYellow}}

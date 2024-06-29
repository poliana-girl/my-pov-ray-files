#include "colors.inc"

camera {
  right x*3000/3000
  location <0, 50, -50> 
  look_at <0, 0, 0>
  angle 90
}

light_source {<-20,75,-100> White}


#declare i = 0;


#while (i < 30)
	#declare o = 0;
	#while (o < 30)
		ovus {
			3, 2
			texture {
				pigment {
					image_map {
						png "ascii.png"
						map_type 1
					}
				}
			}
			translate <15*o - 40, 3, 15*i - 40>
			rotate 30*y
		}
		#declare o = o + 1;
	#end
	#declare i = i + 1;
#end



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
#include "textures.inc"
#include "colors.inc"
#include "glass.inc"

camera {
  location <-200 + clock*60, 30, -100 * clock*60>
  look_at <-20, 0, 100>
  angle 0
  right image_width/image_height*x 
}

light_source {
  <5, 30, -5>
  color White
}

sky_sphere {
  pigment {
    agate
    color_map {
      [0.0 color Bronze2]
      [1.0 color RichBlue]
    }
    scale 0.5
    //translate -1
  }
}

rainbow {
  direction <1, -5, 1>
  angle 60
  width 20
  distance 1000
  jitter 0.02
  color_map {
    [0.0 color Red]
    [0.16 color Orange]
    [0.33 color Yellow]
    [0.5 color Green]
    [0.66 color Blue]
    [0.83 color BlueViolet]
    [1.0 color Violet]
  }
  up <0, 1, 0>
  arc_angle 270
  falloff_angle 10
}





#for (mcount,0,20)
  superellipsoid {
    <0.5, 3>
    pigment {
      color Col_Glass_Ruby
       
    }

    finish {
      ambient 0.2 
      diffuse 0.6
      reflection 0.25
      phong 1
      phong_size 3
    }

    interior {
      ior 0.9
    }
    scale 15
    rotate 0
    translate <cos(mcount + clock*5)*35, sin(mcount + clock*5)*35, mcount*45>
  }
#end


#for (mcount,0,20)
  superellipsoid {
    <0.5 + clock, 3>
    pigment {
      image_map {
        png "nami.png"
      }
      scale 2
      translate <-1,-1>
    }

    finish {
      //ambient 0.2 
      diffuse 0.6
      //reflection 0.25
      phong 1
      //phong_size 3
    }

    scale 15
    rotate 0
    translate <-cos(mcount + clock*5)*35, -sin(mcount + clock*5)*35, mcount*45>
  }
#end

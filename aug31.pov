#include "textures.inc"
#include "colors.inc"

camera {
  location <0, 200 + clock*50, -500 + clock*800>
  look_at <260 + 50 * sin(clock + 3), 300, 10>
  right image_width/image_height*x
}

light_source {
  <260, 100, -50>
  color White
}


sky_sphere {
  pigment {
    gradient y
    color_map {
      [0.0 rgb <0.3, 0.6, 0.4>]
      [0.5 rgb <0.9, 0.7, 0.1>]
    }
  }
}

/*
box {
  <1, 2, 1>, <-1, -1, -5>
  
  texture {
    pigment {color LightBlue filter 0.6}

    finish {
      phong 0.9
      phong_size 60
      metallic 5
    }
  }

  interior {ior 5}
  
  rotate <0.2, 0.4, 0.5>*360
}
*/


plane {
  <0, 1, 0>, -10
  pigment {
    White_Marble
    scale 20
  }

  finish {
    phong 0.5
    diffuse 0.6
  }
}


#declare RandomSeed = seed(1);

#for (Count, 1, 150)
  box {
    <Count -1, Count + 1, Count*2>, <Count * rand(RandomSeed) + 1 + clock , Count * 3 / rand(RandomSeed), Count/clock>
    pigment {rgb <.5, Count/30, sin(Count/30 + clock)> transmit 0.7 * rand(RandomSeed)}
    translate <Count * rand(RandomSeed)*10, Count - rand(RandomSeed)*10, 15>
    rotate <0, rand(RandomSeed) * 30, bitwise_and(clock * 20, rand(RandomSeed) * 20)>
  }
#end

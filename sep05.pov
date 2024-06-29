#include "colors.inc"
#include "textures.inc"

light_source {
  <0, 300, -10>
  color White
}

#if (clock <= 1)
  #declare camera_offset = clock;
#else
  #declare camera_offset = 1;
#end

camera {
  location <0, 20, -30 + camera_offset*30> 
  look_at <0, 0, 0>
  right image_width/image_height*x 
}

sky_sphere {
  pigment {
    color White
  }
}

//box {
//  <1, 1, 1>
//  <-1, -1, -1>
//
//  pigment {
//    color rgb <228/255, 131/255, 45/255>
//  }
//
//  finish {
//    ambient 1
//  }
//
//  rotate 30
//}

#if (clock < 1)
  #declare box_size = 10;
#else
  #declare box_size = 10 - (clock - 1)*10;
#end

#if (box_size < 0)
  #declare box_size = 0;
#end

isosurface {
  function {pow(x, y) + pow(y, 2 * (clock + 1)) + z*clock + sin(y*z)}
  contained_by {
    box {-box_size, box_size}
  }
  max_gradient 4

  pigment {
    color rgb <228/255, 131/255, 45/255>
  }

  finish {
    ambient 1
  }
  rotate clock*170
}


difference {

isosurface {
  function {sin(z + x) + pow(z, clock + 1)}
  contained_by {
    box {-box_size, box_size}
  }
  max_gradient 4
  
  pigment {
    color rgb <228/255, 131/255, 45/255>
    //color Blue
  }

  finish {
    ambient 1
  }

  rotate clock*180
}

isosurface {
  function {tan(x * clock) + sin(y) + sin(z)}
  contained_by {
    box {-box_size, box_size}
  }
  max_gradient 4

  pigment {
    //color Red
    color rgb <228/255, 131/255, 45/255>
  }

  finish {
    ambient 1
  }

  rotate clock*-180
}

}



#if (clock > 5)
  #declare make_small = 625 / pow(clock, 3);
#else 
  #declare make_small = clock;
#end

julia_fractal {
  <0.2, 0.5, 0.3, 0.2>
  hypercomplex
  cube

  pigment {
    color rgb <228/255, 131/255, 45/255>
  }

  finish {
    ambient 1
  }

  scale 9/2 * make_small
  rotate <clock*90, clock*70, clock*60>
}



//#if (clock > 7)
  #declare para_size = 3; //3 * (clock - 7);
//  #if (clock > 8)
//    #declare para_size = 3;
//  #end


  parametric {
    function { sin(u)*cos(v + clock) }
    function { tan(u)*sin(v * clock) }
    function { cos(u) + atan(v) }

    <0,0>, <2*pi,pi * clock>
    contained_by { sphere{0, 5} }
    max_gradient 0.3
    accuracy 0.01
    precompute 20 x,y,z
     pigment {
      color rgb <228/255, 131/255, 45/255>
    }

    finish {
      ambient 1
    }

    scale 3
  }
//#end

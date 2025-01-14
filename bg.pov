#include "colors.inc"
#include "woods.inc"

camera {
  right x*900/900
  location <-1.5,0.9,-0.08> 
  look_at <0,0.7,0.5>
}  
light_source {<-20,75,-100> White}
background {LightBlue}
plane {y,0 pigment {color GreenYellow}}

#declare RandomSeed = seed(1);
#declare XCount=0;
#while (XCount < 200)
  #declare ZCount=0;
  #while (ZCount < 200)
    box {<-0.05,0,-0.05><0.05,1,0.05>
      rotate <3*rand(RandomSeed),5*rand(RandomSeed),3*rand(RandomSeed)>
      texture {T_Wood1 translate <rand(RandomSeed),ZCount,rand(RandomSeed)> rotate x*90 scale 0.07}
      translate <XCount,0,ZCount> 
    }
    #declare ZCount=ZCount+1;
  #end 
  #declare XCount=XCount+1;
#end
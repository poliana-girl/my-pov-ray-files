//wrap the file with the version
#local Temp_version = version;
#version 3.71;
//==================================================
//POV-Ray Main scene file
//==================================================
//This file has been created by PoseRay v3.13.31.705
//3D model to POV-Ray/Moray Converter.
//Author: FlyerX
//Email: flyerx_2000@yahoo.com
//Web: https://sites.google.com/site/poseray/
//==================================================
//Files needed to run the POV-Ray scene:
//blender_POV_main.ini (initialization file - open this to render)
//blender_POV_scene.pov (scene setup of cameras, lights and geometry)
//blender_POV_geom.inc (geometry)
//blender_POV_mat.inc (materials)
// 
//==================================================
//Model Statistics:
//Number of triangular faces..... 33672
//Number of vertices............. 18579
//Number of normals.............. 39407
//Number of UV coordinates....... 0
//Number of lines................ 271
//Number of materials............ 1
//Number of groups/meshes........ 2
//Number of subdivision faces.... 0
//Bounding Box....... from x,y,z=(-3.29688,-3.27347,-6.52311)
//                      to x,y,z=(3.297,3.30212,5.67728)
//                 size dx,dy,dz=(6.59388,6.57559,12.20039)
//                  center x,y,z=(6.0000000000171E-5,0.0143249999999999,-0.422915)
//                       diagonal 15.3481970750509
//Surface area................... 437.406330543732
//             Smallest face area 2.03410734331238E-5
//              Largest face area 0.307857868046246
//Memory allocated for geometry: 3 MBytes
// 
//==================================================
//IMPORTANT:
//This file was designed to run with the following command line options: 
// +W320 +H240 +FN +AM1 +A0.3 +r3 +Q9 +C -UA +MV3.71
//if you are not using an INI file copy and paste the text above to the command line box before rendering
 
 
global_settings {
  //This setting is for alpha transparency to work properly.
  //Increase by a small amount if transparent areas appear dark.
   max_trace_level 15
   adc_bailout 0.001
   assumed_gamma 1
 
}
#include "blender_POV_geom.inc" //Geometry
 
//CAMERA PoseRayCAMERA
camera {
        perspective
        up <0,1,0>
        right -x*image_width/image_height
        location <7, 7, 7>
        look_at <0,0,0>
        angle 32.9346087425027 // horizontal FOV angle
        rotate <0,0,19.308472897936> //roll
        rotate <2.25911291956619,0,0> //pitch
        rotate <0,-34.9627823102675,0> //yaw
        translate <6.0000000000171E-5,0.0143249999999999,-0.422915>
        }
 
//PoseRay default Light attached to the camera
light_source {
              <-2.71050543121376E-20,-2.08166817117217E-17,30.6963941501017> //light position
              color rgb <(sin(clock * 6 - 4) + 1) * 128,(sin(clock * 10 - 8) + 1) * 128,(sin(clock * 13 - clock) + 1) * 128>
              parallel
              point_at <-2.71050543121376E-20,-2.08166817117217E-17,0>
              rotate <0,clock * 90,19.308472897936> //roll
              rotate <2.25911291956619 + clock * 90,0,0> //elevation
              rotate <0,-34.9627823102675, clock * 90> //rotation
             }
 
//Background
background { color srgb <1,1,1>  }
 
//Assembled object that is contained in blender_POV_geom.inc with no SSLT components
object{
      blender_
      }
 
//restore the version used outside this file
#version Temp_version;
//==================================================

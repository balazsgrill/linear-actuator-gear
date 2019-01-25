use <involute_gears.scad>
use <threads.scad>


union(){   
#translate([0,0,8.4]) difference(){
        cylinder(r=8.6, h=44.8, center=true, $fn=100);
        cylinder(r=7.1, h=44.8, center=true, $fn=100);
    }  
    
difference(){
union(){
    
scale([0.96,0.96,1])    gear (
number_of_teeth = 40,
	circular_pitch=210,
	gear_thickness = 10,
	rim_thickness = 10,
	hub_thickness = 10,
	circles=0,
	roundsize = 1.7,
    flat=0,
    helix_angle = -20
	);
   
translate([0,0,-2]) cylinder(r=11, h=5, center=true);
translate([0,0,-7]) 
cylinder(r=8.6, h=14, center=true, $fn=100);
  
translate([0,0,(10/2)+8.5]) 
cylinder(r=13.5, h=10, center=true);

translate([0,0,10+(12.3/2)+8.5]) cylinder(r=(19.7/2), h=12.3, center=true, $fn=100);
}

scale([1.15,1.15,1]) translate([0,0,-40]) 
metric_thread( diameter=14, pitch=4, length=80,
n_starts =3,
internal=true
);

}
}
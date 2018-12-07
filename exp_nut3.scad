use <threads.scad>
union(){
    translate([-1.5,9,10]) cylinder(r=0.5, h=1, center=true, $fn=20);
    translate([0,9,10]) cylinder(r=0.5, h=1, center=true, $fn=20);
    translate([1.5,9,10]) cylinder(r=0.5, h=1, center=true, $fn=20);
difference(){
    
cylinder(r=12, h=20, center=true, $fn=6);


scale([1.15,1.15,1]) translate([0,0,-30]) 
metric_thread( diameter=14, pitch=4, length=60,
n_starts =3,
internal=true
);
    
}
}
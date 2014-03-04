module reel(){
  difference(){
   union(){
    translate([3.5,0,0]) rotate([0,90,0]) cylinder(h = 4, r1 = 4, r2 = 12, center=true);
translate([6,0,0]) rotate([0,90,0]) cylinder(h = 1, r = 12, center=true);
    translate([-3.5,0,0]) rotate([0,90,0]) cylinder(h = 4, r1 = 12, r2 = 4, center=true);
    translate([-6,0,0]) rotate([0,90,0]) cylinder(h = 1, r = 12, center=true);
    rotate([0,90,0]) cylinder(h=7,r=4, center=true);
  }
  rotate([0,90,0]) cylinder(h=16,r=2, center=true);
 }
}

$fn=50;
reel();


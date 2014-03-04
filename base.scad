module bottom(){
color("gray") {
translate([0,15,0])
rotate([90,0,0])
   difference(){
		cylinder(h=30,r=5);
	   translate([0,0,1.5]) cylinder(h=32,r=3);
	}
translate([0,0,5]) cube([20,30,3.2], center=true);
translate([6,0,0.5]) rotate([0,42,0]) cube([1.8,30,10], center=true);
translate([-6,0,0.5]) rotate([0,-42,0]) cube([1.8,30,10], center=true);
}
}

module wall(){
	difference() {
		rotate([90,0,90]) union() {
			color("blue")
			linear_extrude(height = w)
			polygon([ [-10,5],[-5,26],[0,28],[5,26],[10,5] ]) ;
			translate([0,20,0])
			cylinder(h=w+2,r=3.5, center=true);
		}
		translate([0,0,20]) 
		color("red") 
		rotate([0,90,0])
		cylinder(h=8,r=1.8, center=true);
	}
}

w=3;
$fn=50;
r=0;
//for(r=[0, 90]) {
//translate([- 22.5 + r/2,0,0]) {
bottom();
rotate([0,0,r]) {
	translate([10,0,0]) rotate([0,0,180]) wall();
	translate([-10,0,0]) wall();
}
//}
//}


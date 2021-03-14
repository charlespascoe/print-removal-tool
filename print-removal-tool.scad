hole_size=20;
thickness=3;
$fn=100;


linear_extrude(height=thickness, scale=0.5) translate([-5, 5]) minkowski() {
    square([10, 40]);
    circle(r=5);
}

translate([-5, hole_size/2+thickness, hole_size/2+thickness]) rotate([0, 90, 0]) difference() {
    union() {
        cylinder(d=hole_size+2*thickness, h=10);
        translate([0, -hole_size/2-thickness, 0]) cube([hole_size/2+thickness, hole_size+2*thickness,10]);
    }

    translate([0, 0, -1]) cylinder(d=hole_size, h=12);
}

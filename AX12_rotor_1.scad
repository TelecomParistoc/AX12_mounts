union() {
    rotate(45,[0,0,1])
        union() {
            difference() {
                linear_extrude(5,true) circle(d=22,$fn=500);
                translate ([0,8,-2]) linear_extrude(8,true) circle(d=2.7,$fn=90);
                translate ([0,-8,-2]) linear_extrude(8,true) circle(d=2.7,$fn=90);
                translate ([8,0,-2]) linear_extrude(8,true) circle(d=2.7,$fn=90);
                translate ([-8,0,-2]) linear_extrude(8,true) circle(d=2.7,$fn=90);
            }
            difference() {
                rotate(45,[0,0,1])linear_extrude(16,true) square([22,4], true);
                translate ([2,5,12]) rotate (45,[0,0,1]) rotate(90,[1,0,0]) linear_extrude(8,true) circle(d=2.7,$fn=90);
                translate ([-5,-2,12]) rotate (45,[0,0,1]) rotate(90,[1,0,0]) linear_extrude(8,true) circle(d=2.7,$fn=90);
            }
        }
    intersection()
    {
        translate([0,1.5,5.18]) rotate(90,[1,0,0])linear_extrude(3,true) circle(d=22, $fn=500);
        translate([5.5,0,0]) linear_extrude(16,true) square([11,3], true);
    }


    translate([10.95,0,0]) linear_extrude(5,true) square([0.1,3],true);
}

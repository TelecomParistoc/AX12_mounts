module base() {
    difference(){
        union() {
            translate([0,3.5,-3]) linear_extrude(3,true) square([32,7], true);
            color("red") translate([0,-2.5,-19]) linear_extrude(19,true)square([32,5],true);
            color("green") translate([-26,-3,-19]) linear_extrude(19,true) square([20,4],true);
            color("blue") translate([-36,-1,-19]) linear_extrude(3,true) square([52,3]);
            color("yellow") translate([-16, 0,-3]) linear_extrude(3, true) polygon([[0,-1],[0,7],[-20,-1]]);
        }
        translate([8,4,-7]) linear_extrude(9,true) circle(d=2.5,$fn=90);
        translate([-8,4,-7]) linear_extrude(9,true) circle(d=2.5,$fn=90);
        translate([-26,-0,-12]) rotate(90,[1,0,0]) linear_extrude(9,true) circle(d=5,$fn=90);

    }
}
//base();

translate([0,0,19])
union() {
base();
mirror([0,0,1]) translate([0,0,38]) base();
}


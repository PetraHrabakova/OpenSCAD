// Let's make a custom made coin

$fn=100; // kinda like resolution

// First we make a cylinder and substract two cylinders from the top and bottom to create a rim 
 difference() {
    cylinder(h=6, d=36);
    translate([0,0,5]) {
        cylinder(h=6, d=31); // top of coin 
    }
    translate ([0,0,-5]) { 
        cylinder(h=6, d=31); // bottom of coin
    }
}

// Bitcoin symbol side 1
// Letter B + making the middle leg thinner by substracting two rectangles
difference() {
    translate([-9,-9.5,5])linear_extrude(height=1)text("B",font="georgia:style=bold", size=19);
    translate([-1.5,-8.5,5.01])cube([3,8,1]);
    translate([-1.5,0.8,5.01])cube([2,6.7,1]);
}

// Little "tails" above B symbol 
translate([2,8.5,4.7]) {
    cube([2,2.5,1.3]);
}
translate([-3,8.5,4.7]) {
    cube([2,2.5,1.3]);
}

// Little "tails" bellow B symbol  
translate([2,-11.75,4.7]) {
    cube([2,2.5,1.3]);
}
translate([-3,-11.75,4.7]) {
    cube([2,2.5,1.3]);
}

// Bitcoin symbol side 2
// Letter B + making the middle leg thinner by substracting two rectangles
difference() {
    translate([9,-9.5,0])linear_extrude(height=1)rotate([0,180,0])text("B",font="georgia:style=bold", size=19, direction="rtl");
    translate([-1.5,-8.5,-0.01])cube([3,8,1]);
    translate([-0.5,0.8,-0.01])cube([2,6.7,1]);
}

// Little "tails" above B symbol 
translate([1,8.5,0]) {
    cube([2,2.5,1.3]);
}
translate([-4,8.5,0]) {
    cube([2,2.5,1.3]);
}

// Little "tails" bellow B symbol  
translate([1,-11.75,0]) {
    cube([2,2.5,1.3]);
}
translate([-4,-11.75,0]) {
    cube([2,2.5,1.3]);
}


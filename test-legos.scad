include <doblo-factory.scad>;
include <lib/doblo-params-repl.scad>;

include <vendor/pins/buser_pins.scad>;
rotate([0,0,90])translate([-30,-25,0]) union(){
translate([-5,-20])cube([10,40,3]);
translate([0,-20])cylinder(h=3,r=5);
translate([0,20])cylinder(h=3,r=5);
pintack(h=7,r=3);
}

/*
include <vendor/ballsocket/ballsocket.scad>;
translate([0,0,5])union(){
  rotate([0,90,0])ball(size=5);
  translate([10,0,0])rotate([0,90,0])rotate([0,0,90])joint(size=5);
}
*/
LEGO_DIV = false;
*doblo   (0,   6,   0,   2,   2,    2,  true, false, LUGO);
*doblo   (2,   0,   0,   2,   2,    3,  true, false, DOBLO);
*doblo   (2,   3,   0,   1,   1,    3,  true, false, DOBLO);
*doblo   (0,   3,   0,   4,   1,    3,  false, false, LUGO);

include <ext/hinge.scad>;

//hinge1a(LUGO,-1,-1);
//hinge1b(6,1,-1);
//hinge1a(DOBLO,-1,-3);


/*hinge1b(DOBLO,1,-2);
hinge1a(DOBLO,3,-2);
*/
//hinge1a(MINI,1,1);


//hinge2(DOBLO,2,3,0);
//hinge2(DOBLO,2,3,1,4);

//hinge2(3,3,0,20,true,LUGO);
//hinge2(3,3,1,16,false,LUGO);

hinge2   (0,  3,  0,   1,  2, 3, true, DOBLO);
hinge2   (2,  3,  0,   1,  2, 3, true, DOBLO);

//hinge2   (0,  3,  0,   2,  2, 3, true, LUGO);
//rotate([0,0,180])hinge2   (-6,  -5,  0,   2,  2, 3, true, LUGO);

//hinge2   (20,  3,  0,   4,  4, 3, true, LUGO);
//rotate([0,0,180])hinge2   (-30,  -7,  0,  4,  4, 3, true, LUGO);

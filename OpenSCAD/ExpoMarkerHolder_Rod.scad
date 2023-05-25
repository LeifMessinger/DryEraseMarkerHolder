use <Library/center.scad>

$fn = 50;

module ExpoMarkerHolder_Rod(diameter=9.0, height=5.0, fins=true, finSize=1.0){
	radius = diameter / 2.0;
	union(){
		cylinder(d=diameter, h=height);
		cylinder(d=diameter + 1.0, h=height, $fn=3);
	}
}

ExpoMarkerHolder_Rod();
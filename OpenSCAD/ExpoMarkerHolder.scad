use <ExpoMarkerHolder_Rod.scad>

module SpreadVisualizer(spread, height=5.0){
	%cylinder(d=spread, h=5.0);
}

module ExpoMarkerHolder(){
	spreadDiameter = 20.0;
	spread = spreadDiameter / 2.0;
	union(){
		import("ShallowBlock1x1.stl", convexity=100);
		translate([0, 0, 7.0]){
			translate([spread, spread]){
				union(){
					ExpoMarkerHolder_Rod();
					SpreadVisualizer(spreadDiameter);
				}
			}
			
			translate([-spread, spread]){
				ExpoMarkerHolder_Rod();
				SpreadVisualizer(spreadDiameter);
			}
			
			translate([-spread, -spread]){
				ExpoMarkerHolder_Rod();
				SpreadVisualizer(spreadDiameter);
			}
			
			translate([spread, -spread]){
				ExpoMarkerHolder_Rod();
				SpreadVisualizer(spreadDiameter);
			}
		}
	}
}

ExpoMarkerHolder();
$fn = $preview ? 24 : 72;


// Vise Base Definitions.
// length, witdh, height, along with
// rails and method of linear advance
// (screw).

// constants
// this represents the minimum wall width around rails and screws.
safeZone = 4;

// dynamics (a.k.a. variables)
epsilon = 8;
viseLength = 100;
viseWidth = 50;
viseHeight = 36;

viseRailDiameter = 8;
viseAdvanceScrewDiameter = 8;




module base(viseLength, viseWidth, viseHeight, viseRailDiameter, viseAdvanceScrewDiameter) {
	wallThickness = viseLength/epsilon > 6 ? viseLength/epsilon : 10;

	difference() {
		linear_extrude(viseHeight) {
			square([viseLength,viseWidth]);
		}

		translate([viseLength-wallThickness,0,wallThickness]){
			rotate([0,-90,0]) {
				linear_extrude(viseLength-wallThickness-wallThickness) {
					square([(viseLength-wallThickness),viseWidth]);
				}
			}
		}

		translate([0,viseWidth/2,viseWidth/2]) {
			rotate([0,90,0]) {
				linear_extrude(viseLength) {
					circle(d=viseAdvanceScrewDiameter);
				}
			}
		}

		translate([0,viseWidth/4,viseWidth/2]) {
			rotate([0,90,0]) {
				linear_extrude(viseLength) {
					circle(d=viseRailDiameter);
				}
			}
		}

		translate([0,viseWidth/4*3,viseWidth/2]) {
			rotate([0,90,0]) {
				linear_extrude(viseLength) {
					circle(d=viseRailDiameter);
				}
			}
		}
	}
}

base(viseLength, viseWidth, viseHeight, viseRailDiameter, viseAdvanceScrewDiameter);

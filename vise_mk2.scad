$fn = $preview ? 24 : 72;


// Vise Base Definitions.
// length, witdh, height, along with
// rails and method of linear advance
// (screw).
epsilon = 8;
viseLength = 85;
viseWidth = 50;
viseHeight = 36;

viseRailDiameter = 8;
viseAdvanceScrewDiameter = 8;


module base(vL, vW, vW, vRD, vASD) {
	wallThickness = vL/epsilon > 6 ? vL/epsilon : 10;
	wT = wallThickness;

	difference() {
		linear_extrude(vW) {
			square([vL,vW]);
		}

		translate([vL-wT,0,wT]){
			rotate([0,-90,0]) {
				linear_extrude(vL-wT-wT) {
					square([vW-wT,vW]);
				}
			}
		}

		translate([0,vW/2,vW/2]) {
			rotate([0,90,0]) {
				linear_extrude(vL) {
					circle(d=vASD);
				}
			}
		}

		translate([0,vW/4,vW/2]) {
			rotate([0,90,0]) {
				linear_extrude(vL) {
					circle(d=vRD);
				}
			}
		}

		translate([0,vW/4*3,vW/2]) {
			rotate([0,90,0]) {
				linear_extrude(vL) {
					circle(d=vRD);
				}
			}
		}
	}
}

base(viseLength, viseWidth, viseHeight, viseRailDiameter, viseAdvanceScrewDiameter);

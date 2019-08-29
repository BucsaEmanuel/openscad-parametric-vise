$fn = $preview ? 12 : 72;



module mainBody() {

	rotate(v=[1,0,0], a=90) {
		linear_extrude(50) {
			polygon([
				[0,0],
				[85,0],
				[85,36],
				[72,36],
				[72,16],
				[13,16],
				[13,36],
				[4,36],
				[0,32]
				]);
		}
	}
}


module mainBodyCutout() {

	translate([13,-50,0]) {
		rotate([90,0,90]) {
			linear_extrude(59) {
				polygon([
					[10.5, 8],
					[39.5, 8],
					[50, 16],
					[50, 36],
					[0, 36],
					[0, 16]
					]);

			}
		}
	}
}

module holes() {
	color([1,1,1]) {
		translate([0,-50,0]) {
			rotate([90,0,90]) {
				linear_extrude(85) {
					translate([7.75, 20.25, 0]) {
						circle(6.15/2);
					}

					translate([25, 19.15, 0]) {
						circle(8.25/2);
					}

					translate([50-7.75,20.25,0]) {
						circle(6.15/2);
					}
				}
			}
		}
	}
}


module slot(length, width) {
	union() {

		translate([width/2,0,0]) {

			circle(width/2);
		}

		translate([length/2,0,0]) {
			square([length-width, width], center=true);
		}

		translate([length-width/2,0,0]) {
			circle(width/2);
		}

		
	}
}



module slotCutouts() {
	linear_extrude(8) {
		translate([16, -16, 0]) {
 				slot(12,4.5);
		}

		translate([16, -(50-16), 0]) {
			slot(12,4.5);
		}

		translate([(85-12-16), -16, 0]) {
			slot(12,4.5);
		}

		translate([(85-12-16), -(50-16), 0]) {
			slot(12,4.5);
		}
	}
}

module body() {
	difference() {
		mainBody();
		mainBodyCutout();
		holes();
		slotCutouts();
	}
}

body();

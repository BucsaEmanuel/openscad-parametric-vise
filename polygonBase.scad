
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
	translate([0,-50,0])
	rotate([90,0,90]) {
	linear_extrude(85) {
		translate([7.75, 20.25, 0]) {
			circle(6.15/2, $fn=36);
		}

		translate([25, 19.15, 0]) {
			circle(8.25/2, $fn=36);
		}

		translate([50-7.75,20.25,0]) {
			circle(6.15/2, $fn=36);
		}
	}
}
}

module body() {
	difference() {
		mainBody();
		mainBodyCutout();
		holes();
	}
}


body();
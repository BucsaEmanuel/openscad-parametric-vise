$fn = $preview ? 24 : 72;

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

module mainBody() {
	union() {
		// front side
		translate([0,13,0]) {
			rotate([90,0,0]) {
				linear_extrude(13) {
					difference() {
						polygon([
							[0, 0],
							[0, 36],
							[50, 36],
							[50, 0]
						]);
						translate([50/2, 15 + 8.15/2, 0]) {
							circle(d=8.15);
						}

						translate([7.5, 17.5 + 6.15/2, 0]) {
							circle(d=6.15);
						}

						translate([50-7.5, 17.5 + 6.15/2, 0]) {
							circle(d=6.15);
						}
					}
				}
			}
		}

		// middle [add mounting holes here]
		translate([0, 85, 0]) {
			rotate([90,0,0]) {
				difference() {
					translate([0, 0, 13]) {
						linear_extrude(59) {
							polygon([
								[0, 0],
								[0, 36-20],
								[10.5, 36-25],
								[10.5, 36-27.5],
								[50-10.5, 36-27.5],
								[50-10.5, 36-25],
								[50, 36-20],
								[50, 0]
							]);
						}
					}
					// slots
					translate([4.5/2+13.5, 8+2.5, 16]){
						rotate([90, -90, 0]) {
							linear_extrude(36-28+5) {
								slot(11.5, 4.5);
							}
						}
					}

					translate([50-(4.5/2+13.5), 8+2.5, 16]){
						rotate([90, -90, 0]) {
							linear_extrude(36-28+5) {
								slot(11.5, 4.5);
							}
						}
					}


					translate([4.5/2+13.5, 8+2.5, 85-13-16]){
						rotate([90, -90, 0]) {
							linear_extrude(36-28+5) {
								slot(11.5, 4.5);
							}
						}
					}

					translate([50-(4.5/2+13.5), 8+2.5, 85-13-16]){
						rotate([90, -90, 0]) {
							linear_extrude(36-28+5) {
								slot(11.5, 4.5);
							}
						}
					}
				}
			}
		}

		// back side
		translate([0, 85*2-13, 0]) {
			rotate([90,0,0]) {
				translate([0, 0, 85-13]) {	
					linear_extrude(13) {
						difference() {
							polygon([
								[0, 0],
								[0, 36],
								[50, 36],
								[50, 0]
							]);
							translate([50/2, 15 + 8.15/2, 0]) {
								circle(d=8.15);
							}

							translate([7.5, 17.5 + 6.15/2, 0]) {
								circle(d=6.15);
							}

							translate([50-7.5, 17.5 + 6.15/2, 0]) {
								circle(d=6.15);
							}
						}
					}
				}
			}
		}
	}
	
}





module slidingJaw() {
	translate([0, 13+25+(85-13*2-25)/2, 0]) {
		rotate([90,0,0]) {
			difference() {

				linear_extrude(25) {
					difference() {
						polygon([
							[0, 18],
							[0, 36],
							[50, 36],
							[50, 18],
							[50-8, 36-23],
							[8, 36-23],
						]);
						translate([50/2, 15 + 8.15/2, 0]) {
							circle(d=8.15);
						}

						translate([7.5, 17.5 + 6.15/2, 0]) {
							circle(d=6.15);
						}

						translate([50-7.5, 17.5 + 6.15/2, 0]) {
							circle(d=6.15);
						}
					}
				}

				// back-cut on the sliding jaw
				translate([50+5/2, 36 + 1, -1]) {

					rotate([270,180,90]) {

						linear_extrude(50+5) {
							polygon([
								[0, 0],
								[0, 16.5 + 1],
								[9 + 1, 0]
							]);
						}
					}
				}


			}
		}
	}
}
union() {
	
mainBody();
slidingJaw();
}


module screw() {



	linear_extrude(101.5) {
		circle(d=7.75);
	}

}

// screw();
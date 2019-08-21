bodyLength = 85;
bodyWidth = 51;
bodyHeight = 36;


module makeBody(bodyLength, bodyWidth, bodyHeight) {
	linear_extrude(bodyHeight) {
	        square([bodyLength,bodyWidth], center=true);
	    }
}

module makeBodyCutout(bodyWidth, bodyHeight) {
	bodyCutoutHeight = bodyHeight - 16;
	translate([0,(bodyWidth/2+5) ,26]) {
	    rotate(a=[90,0,0]) {
	    	linear_extrude(bodyWidth+10) {
	   			square([60, bodyCutoutHeight], center=true);
	   		}
	   	}
    }
}

module viseBody(bodyLength, bodyWidth, bodyHeight) {
    difference() {
    	makeBody(bodyLength, bodyWidth, bodyHeight);
    	makeBodyCutout(bodyWidth, bodyHeight);    
	}
}


viseBody(bodyLength,bodyWidth,bodyHeight);
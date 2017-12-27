lastLine = {x:null,y:null,z:null,e:null,f:null};
relative = false;

gcodelines = [];
threeLines = new THREE.Object3D();
threeLines.children = gcodelines;
scene.add(threeLines);

 function loadGcode(gcode) {

	if (typeof(gcode) !== 'string' || gcode === '') {
		console.log('gcode error, invalid data');
		return false;
	}

	// loop through each gcode line
	var lines = gcode.split('\n');

  var index = 0;
  var processing = function() {
    var element = lines[index]
    index++
    gcodeLine(element);
    //process element;
    if (lines.length > 0) {
      setTimeout(processing, 0);
    }
  }
  processing();

}

function gcodeLine(text) {
	text = text.replace(/;.*$/, '').trim(); // remove comments
	if (text) {
		// a token is a segment of the line seperated by a space
		// this could be a G command, an M command or any arguments passed to them
		// a better parser would handle when gcode is written without spaces
		// "G1 Y20" vs "G1Y20"
		var tokens = text.split(' ');
		if (tokens) {
			// holder for arguments
			// the command (G or M etc) is always first
			var args = {'cmd':tokens[0].toLowerCase()};
			tokens.splice(1).forEach(function(token) {
				// for each argument, add it to the args object
				args[token[0].toLowerCase()] = parseFloat(token.substring(1));
			});
			// add it to gcodeLines
			if (this[args['cmd']]) {
				// a parser for this command exists
				// parse it
				this[args['cmd']](args);
        // console.log('Parsing command '+args['cmd']);
			} else {
				// console.log('Unsupported command '+args['cmd']);
			}
		}

	}
}


function addSegment(p1, p2, c) {
	var g = new THREE.Geometry();
	g.vertices.push(new THREE.Vector3(p1.x,p1.y,p1.z), new THREE.Vector3(p2.x,p2.y,p2.z));
  var bufferGeo = convertLineGeometryToBufferGeometry(g, c.color)
	// gcodelines.push(new THREE.Line(g,c));
  gcodelines.push(new THREE.LineSegments(bufferGeo, c))
}

function delta(v1, v2) {
        return relative ? v2 : v2 - v1;
}

function absolute(v1, v2) {
        return relative ? v1 + v2 : v2;
}

function g0(args) {
          // console.log(args)
          // console.log(line)

            var newLine = {
                x: args.x !== undefined ? absolute(lastLine.x, args.x) : lastLine.x,
                y: args.y !== undefined ? absolute(lastLine.y, args.y) : lastLine.y,
                z: args.z !== undefined ? absolute(lastLine.z, args.z) : lastLine.z,
                e: args.e !== undefined ? absolute(lastLine.e, args.e) : lastLine.e,
                f: args.f !== undefined ? absolute(lastLine.f, args.f) : lastLine.f,
            };

	if (lastLine != undefined) {
		// g0 lines are black
            addSegment(lastLine, newLine, new THREE.LineBasicMaterial({color:'grey',linewidth:.5}));
	}
            lastLine = newLine;
}

function g1(args) {

            // Example: G1 Z1.0 F3000
            //          G1 X99.9948 Y80.0611 Z15.0 F1500.0 E981.64869
            //          G1 E104.25841 F1800.0
            // Go in a straight line from the current (X, Y) point
            // to the point (90.6, 13.8), extruding material as the move
            // happens from the current extruded length to a length of
            // 22.4 mm.

            var newLine = {
                x: args.x !== undefined ? absolute(lastLine.x, args.x) : lastLine.x,
                y: args.y !== undefined ? absolute(lastLine.y, args.y) : lastLine.y,
                z: args.z !== undefined ? absolute(lastLine.z, args.z) : lastLine.z,
                e: args.e !== undefined ? absolute(lastLine.e, args.e) : lastLine.e,
                f: args.f !== undefined ? absolute(lastLine.f, args.f) : lastLine.f,
            };

	if (lastLine != undefined) {
            addSegment(lastLine, newLine, new THREE.LineBasicMaterial({color:'#ffa500',linewidth:1}));
	}
            lastLine = newLine;
}

function g90(args) {
	relative = false;
}

function g91(args) {
	relative = true;
}

function g20(args) {
	// set units to inches
}

function g21(args) {
	// set units to mm
	// could be used at a later date
	// to display units on screen
}

function convertLineGeometryToBufferGeometry(lineGeometry, color) {
    var positions = new Float32Array( lineGeometry.vertices.length * 3 );
    var colors = new Float32Array( lineGeometry.vertices.length * 3 );

    var geometry = new THREE.BufferGeometry();

    for (var i = 0; i < lineGeometry.vertices.length; i++) {
        var x = lineGeometry.vertices[i].x;
        var y = lineGeometry.vertices[i].y;
        var z = lineGeometry.vertices[i].z;

        // positions
        positions[ i * 3 ] = x;
        positions[ i * 3 + 1 ] = y;
        positions[ i * 3 + 2 ] = z;

        // colors
        colors[ i * 3 ] = color.r;
        colors[ i * 3 + 1 ] = color.g;
        colors[ i * 3 + 2 ] = color.b;
    }

    geometry.addAttribute( 'position', new THREE.BufferAttribute( positions, 3 ) );
    geometry.addAttribute( 'color', new THREE.BufferAttribute( colors, 3 ) );

    geometry.computeBoundingSphere();

    return geometry;
};

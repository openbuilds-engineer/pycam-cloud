function drawGrid(x, y) {
  var grid = new THREE.Object3D()

	// Plane
	var geometry = new THREE.PlaneGeometry( x*2, y*2);
	// var material = new THREE.MeshBasicMaterial( {color: 0x226699, transparent: true, opacity: 0.8, side:THREE.DoubleSide} );
  var material = new THREE.MeshPhongMaterial( { color: 0x226699, specular: 0x101010, transparent: true, opacity: 0.8, side:THREE.DoubleSide } )


	var plane = new THREE.Mesh( geometry, material );
	// plane.position.z = -0.01;
	grid.add( plane );

  // VERTICALS
  // VERTICALS top right
  for (i=0; i<=x; i+=10) {
      var geometryx10 = new THREE.Geometry();
      geometryx10.vertices.push(
        new THREE.Vector3( i, 0, 0 ),
        new THREE.Vector3( i, y, 0 ),
      );
      grid.add( new THREE.Line( geometryx10, new THREE.LineBasicMaterial({ color: 0xffffff, opacity: 0.1, transparent: true, side:THREE.DoubleSide }) ));
  }

  for (i=0; i<=x; i+=100) {
      var geometryx10 = new THREE.Geometry();
      geometryx10.vertices.push(
        new THREE.Vector3( i, 0, 0 ),
        new THREE.Vector3( i, y, 0 ),
      );
      grid.add( new THREE.Line( geometryx10, new THREE.LineBasicMaterial({ color: 0xffffff, opacity: 0.28, transparent: true, side:THREE.DoubleSide }) ));
  }

  // VERTICALS top left
  for (i=0; i>=-x; i-=10) {
      var geometryx10 = new THREE.Geometry();
      geometryx10.vertices.push(
        new THREE.Vector3( i, 0, 0 ),
        new THREE.Vector3( i, y, 0 ),
      );
      grid.add( new THREE.Line( geometryx10, new THREE.LineBasicMaterial({ color: 0xffffff, opacity: 0.1, transparent: true, side:THREE.DoubleSide }) ));
  }

  for (i=0; i>=-x; i-=100) {
      var geometryx10 = new THREE.Geometry();
      geometryx10.vertices.push(
        new THREE.Vector3( i, 0, 0 ),
        new THREE.Vector3( i, y, 0 ),
      );
      grid.add( new THREE.Line( geometryx10, new THREE.LineBasicMaterial({ color: 0xffffff, opacity: 0.28, transparent: true, side:THREE.DoubleSide }) ));
  }

  // VERTICALS bottom left
  for (i=0; i>=-x; i-=10) {
      var geometryx10 = new THREE.Geometry();
      geometryx10.vertices.push(
        new THREE.Vector3( i, 0, 0 ),
        new THREE.Vector3( i, -y, 0 ),
      );
      grid.add( new THREE.Line( geometryx10, new THREE.LineBasicMaterial({ color: 0xffffff, opacity: 0.1, transparent: true, side:THREE.DoubleSide }) ));
  }

  for (i=0; i>=-x; i-=100) {
      var geometryx10 = new THREE.Geometry();
      geometryx10.vertices.push(
        new THREE.Vector3( i, 0, 0 ),
        new THREE.Vector3( i, -y, 0 ),
      );
      grid.add( new THREE.Line( geometryx10, new THREE.LineBasicMaterial({ color: 0xffffff, opacity: 0.28, transparent: true, side:THREE.DoubleSide }) ));
  }

  // VERTICALS bottom right
  for (i=0; i<=x; i+=10) {
      var geometryx10 = new THREE.Geometry();
      geometryx10.vertices.push(
        new THREE.Vector3( i, 0, 0 ),
        new THREE.Vector3( i, -y, 0 ),
      );
      grid.add( new THREE.Line( geometryx10, new THREE.LineBasicMaterial({ color: 0xffffff, opacity: 0.1, transparent: true, side:THREE.DoubleSide }) ));
  }

  for (i=0; i<=x; i+=100) {
      var geometryx10 = new THREE.Geometry();
      geometryx10.vertices.push(
        new THREE.Vector3( i, 0, 0 ),
        new THREE.Vector3( i, -y, 0 ),
      );
      grid.add( new THREE.Line( geometryx10, new THREE.LineBasicMaterial({ color: 0xffffff, opacity: 0.28, transparent: true, side:THREE.DoubleSide }) ));
  }

  // HORISONTALS
  // HORISONTALS top right
  for (i=0; i<=y; i+=10) {
      var geometryx10 = new THREE.Geometry();
      geometryx10.vertices.push(
        new THREE.Vector3( 0, i, 0 ),
        new THREE.Vector3( x, i, 0 ),
      );
      grid.add( new THREE.Line( geometryx10, new THREE.LineBasicMaterial({ color: 0xffffff, opacity: 0.1, transparent: true, side:THREE.DoubleSide }) ));
  }

  for (i=0; i<=y; i+=100) {
      var geometryx10 = new THREE.Geometry();
      geometryx10.vertices.push(
        new THREE.Vector3( 0, i, 0 ),
        new THREE.Vector3( x, i, 0 ),
      );
      grid.add( new THREE.Line( geometryx10, new THREE.LineBasicMaterial({ color: 0xffffff, opacity: 0.28, transparent: true, side:THREE.DoubleSide }) ));
  }

  // HORISONTALS bottom right
  for (i=0; i>=-y; i-=10) {
      var geometryx10 = new THREE.Geometry();
      geometryx10.vertices.push(
        new THREE.Vector3( 0, i, 0 ),
        new THREE.Vector3( x, i, 0 ),
      );
      grid.add( new THREE.Line( geometryx10, new THREE.LineBasicMaterial({ color: 0xffffff, opacity: 0.1, transparent: true, side:THREE.DoubleSide }) ));
  }

  for (i=0; i>=-y; i-=100) {
      var geometryx10 = new THREE.Geometry();
      geometryx10.vertices.push(
        new THREE.Vector3( 0, i, 0 ),
        new THREE.Vector3( x, i, 0 ),
      );
      grid.add( new THREE.Line( geometryx10, new THREE.LineBasicMaterial({ color: 0xffffff, opacity: 0.28, transparent: true, side:THREE.DoubleSide }) ));
  }

  // HORISONTALS bottom left
  for (i=0; i>=-y; i-=10) {
      var geometryx10 = new THREE.Geometry();
      geometryx10.vertices.push(
        new THREE.Vector3( 0, i, 0 ),
        new THREE.Vector3( -x, i, 0 ),
      );
      grid.add( new THREE.Line( geometryx10, new THREE.LineBasicMaterial({ color: 0xffffff, opacity: 0.1, transparent: true, side:THREE.DoubleSide }) ));
  }

  for (i=0; i>=-y; i-=100) {
      var geometryx10 = new THREE.Geometry();
      geometryx10.vertices.push(
        new THREE.Vector3( 0, i, 0 ),
        new THREE.Vector3( -x, i, 0 ),
      );
      grid.add( new THREE.Line( geometryx10, new THREE.LineBasicMaterial({ color: 0xffffff, opacity: 0.28, transparent: true, side:THREE.DoubleSide }) ));
  }

  // HORISONTALS top left
  for (i=0; i<=y; i+=10) {
      var geometryx10 = new THREE.Geometry();
      geometryx10.vertices.push(
        new THREE.Vector3( 0, i, 0 ),
        new THREE.Vector3( -x, i, 0 ),
      );
      grid.add( new THREE.Line( geometryx10, new THREE.LineBasicMaterial({ color: 0xffffff, opacity: 0.1, transparent: true, side:THREE.DoubleSide }) ));
  }

  for (i=0; i<=y; i+=100) {
      var geometryx10 = new THREE.Geometry();
      geometryx10.vertices.push(
        new THREE.Vector3( 0, i, 0 ),
        new THREE.Vector3( -x, i, 0 ),
      );
      grid.add( new THREE.Line( geometryx10, new THREE.LineBasicMaterial({ color: 0xffffff, opacity: 0.28, transparent: true, side:THREE.DoubleSide }) ));
  }

  // AXES LINES
  // green #5cb85c
  // red   #d9534f
  // blue  #0275d8
  var geometryx = new THREE.Geometry();
  geometryx.vertices.push(
    new THREE.Vector3( x, 0, 0 ),
    new THREE.Vector3( -x, 0, 0 ),
  );
  var line = new MeshLine();
  line.setGeometry( geometryx );
  var material = new MeshLineMaterial({lineWidth: 3, color: new THREE.Color( 0xd9534f )});
  var mesh = new THREE.Mesh( line.geometry, material ); // this syntax could definitely be improved!
  mesh.position.z = 1.5
  grid.add(mesh);

  var geometryy = new THREE.Geometry();
  geometryy.vertices.push(
    new THREE.Vector3( 0, -y, 0 ),
    new THREE.Vector3( 0, y, 0 ),
  );
  var line = new MeshLine();
  line.setGeometry( geometryy );
  var material = new MeshLineMaterial({lineWidth: 3, color: new THREE.Color( 0x5cb85c )});
  var mesh = new THREE.Mesh( line.geometry, material ); // this syntax could definitely be improved!
  mesh.position.z = 1.5
  grid.add(mesh);

  var geometryx = new THREE.Geometry();
  geometryx.vertices.push(
    new THREE.Vector3( 0, 0, 0 ),
    new THREE.Vector3( 0, 0, 100 ),
  );
  var line = new MeshLine();
  line.setGeometry( geometryx );
  var material = new MeshLineMaterial({lineWidth: 3, color: new THREE.Color( 0x0275d8 )});
  var mesh = new THREE.Mesh( line.geometry, material ); // this syntax could definitely be improved!
  mesh.position.z = 1.5
  grid.add(mesh);
  // grid.add( new THREE.Line( geometryx, new THREE.LineBasicMaterial({ color: 0x0275d8, side:THREE.DoubleSide }) ));

  // TEXT LABELS
  // add axes labels
  var xlbl = this.makeSprite(this.scene, "webgl", {
          x: x+10,
          y: 0,
          z: 0,
          text: "X+",
          color: "#d9534f",
          size: 10
  });
  var ylbl = this.makeSprite(this.scene, "webgl", {
          x: 0,
          y: y+10,
          z: 0,
          text: "Y+",
          color: "#5cb85c",
          size: 10
  });
  var xlblmin = this.makeSprite(this.scene, "webgl", {
          x: -x-10,
          y: 0,
          z: 0,
          text: "X-",
          color: "#d9534f",
          size: 10
  });
  var ylblmin = this.makeSprite(this.scene, "webgl", {
          x: 0,
          y: -y-10,
          z: 0,
          text: "Y-",
          color: "#5cb85c",
          size: 10
  });
      var zlbl = this.makeSprite(this.scene, "webgl", {
          x: 0,
          y: 0,
          z: 125,
          text: "Z+",
          color: "#0275d8",
          size: 10
  });


  grid.add(xlbl);
  grid.add(ylbl);
  grid.add(xlblmin);
  grid.add(ylblmin);
  grid.add(zlbl);

  grid.name = "Grid Area"
  return (grid)
}

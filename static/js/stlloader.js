var oDatos;

function loadSTL(data, filename) {
  var FileSTL = new THREE.Object3D()
  FileSTL.name = "STL: " + filename
  var loader = new THREE.STLLoader();
  var geometry = loader.parse(data);
  var material = new THREE.MeshPhongMaterial(
  {
      color: 0xaaaaaa,
      specular: 0x111111,
      shininess: 200
  });
  var mesh = new THREE.Mesh(geometry, material);
  mesh.castShadow = true;
  mesh.receiveShadow = true;

  // center object
  var size = new THREE.Vector3(); // create once and reuse
  var box = new THREE.BoxHelper( mesh, 0xff00ff );
  var box3 = new THREE.Box3();
  box3.setFromObject( box );
  box3.getSize( size )
  box.name = "Bounding Box"
  mesh.translateZ(-box3.min.z);
  if ((box3.min.y - box3.max.y) > 0) {
    mesh.translateY(box3.min.y +  size.y/2);
  } else {
    mesh.translateY(-box3.min.y - size.y/2);
  }
  if ((box3.min.x - box3.max.x) > 0) {
    mesh.translateX(box3.min.x +  size.x/2);
  } else {
    mesh.translateX(-box3.min.x - size.x/2);
  }

  mesh.userData.filename = filename;
  mesh.userData.type = "stl";
  mesh.userData.size = size;

  // display
  viewJSON.view.files.push(mesh);
  files.push(mesh);
  FileSTL.add(mesh);
  fileDisplay.add(mesh);

}


function toScreenPosition(object) {
  scene.updateMatrixWorld();
  var vector = new THREE.Vector3();
  vector.setFromMatrixPosition( object.matrixWorld );
  var canvas = renderer.domElement;

  // Where is the Canvas (offset div from screen)
  var offsetLeft = getOffset(canvas).left
  var offsetTop = getOffset(canvas).top

  // figure out width that is hi-dpi resolution independent
  var canvasWidth = canvas.width;
  if ($(canvas).css('width')) {
      // console.log("is a css width:", $(canvas).css('width'));
      canvasWidth = parseInt($(canvas).css('width'));
  }
  var canvasHeight = canvas.height;
  if ($(canvas).css('height')) {
      // console.log("is a css height:", $(canvas).css('height'));
      canvasHeight = parseInt($(canvas).css('height'));
  }
  var widthHalf = canvasWidth / 2, heightHalf = canvasHeight / 2;
  // map to normalized device coordinate (NDC) space
  vector.project( camera );
  // map to 2D screen space

  var posX = (( vector.x * widthHalf ) + widthHalf) + offsetLeft;
  var posY = (- ( vector.y * heightHalf ) + heightHalf) + offsetTop;

  // Constrain
  if (posX < offsetLeft) {posX = offsetLeft}
  if (posY < offsetTop) {posY = offsetTop}
  if (posX > (offsetLeft + canvasWidth)) {posX = (offsetLeft + canvasWidth)}
  if (posY > (offsetTop + canvasHeight)) {posY = (offsetTop + canvasHeight)}

  vector.x = posX
  vector.y = posY
  return vector;
}

function getOffset(el) {
  el = el.getBoundingClientRect();
  return {
    left: el.left + window.scrollX,
    top: el.top + window.scrollY
  }
}

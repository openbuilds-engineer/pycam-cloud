var camera, scene, renderer, sceneWidth, sceneHeight, fileDisplay;
var scene2, renderer2;
var controls;
var ambientLight;

fileDisplay = new THREE.Object3D()

init();
animate();
function init() {
  sceneWidth = document.getElementById("renderArea").offsetWidth,
  sceneHeight = document.getElementById("renderArea").offsetHeight;
  camera = new THREE.PerspectiveCamera(45, sceneWidth / sceneHeight, 1, 10000);
	camera.position.set( 0, 0, 500 );
	controls = new THREE.OrbitControls( camera );
	scene = new THREE.Scene();
	// scene.background = new THREE.Color( 0xffffff );
	scene2 = new THREE.Scene();
  renderer = new THREE.WebGLRenderer({antialias: true, alpha: true});
  renderer.setClearColor( 0x000000, 0 ); // the default
	renderer.setPixelRatio( window.devicePixelRatio );
	renderer.setSize(sceneWidth, sceneHeight)
	$("#renderArea").append( renderer.domElement );
	renderer2 = new THREE.CSS3DRenderer();
	renderer2.setSize(sceneWidth, sceneHeight)
	renderer2.domElement.style.position = 'absolute';
	renderer2.domElement.style.top = '54px';
	$("#renderArea").append( renderer2.domElement );

  var WorkSpace = new THREE.Object3D()
  WorkSpace.name = "WorkSpace"

  var SceneLight = new THREE.Object3D()
  SceneLight.name = "Stage Lighting"
  light = new THREE.DirectionalLight(0xcccccc, 0.5);
  light.name = "Light behind Camera"
  light.position.set(1, 0, 1).normalize();
  light.castShadow = true;
  light.target.x = 0;
  light.target.y = 0;
  light.target.z = 0;
	SceneLight.add( light );
  var lights = [];
	lights[ 0 ] = new THREE.PointLight( 0xffffff, 0.2, 0 );
	lights[ 1 ] = new THREE.PointLight( 0xffffff, 0.2, 0 );
	lights[ 2 ] = new THREE.PointLight( 0xffffff, 0.2, 0 );
  lights[ 0 ].name = "Point Light 1"
  lights[ 1 ].name = "Point Light 1"
  lights[ 2 ].name = "Point Light 1"
  lights[ 0 ].position.set( 0, 200, 200 );
	lights[ 1 ].position.set( 100, 200, 100 );
	lights[ 2 ].position.set( - 100, - 200, 500 );
  SceneLight.add( lights[ 0 ] );
	SceneLight.add( lights[ 1 ] );
	SceneLight.add( lights[ 2 ] );


  WorkSpace.add(SceneLight)

  var grid = drawGrid(370, 230)
  WorkSpace.add(grid)

  scene.add(WorkSpace);

  // var element = document.createElement( 'div' );
  // $(element).append("<button type='button' class='btn btn-sm btn-primary'>Secondary</button>");
  // var object = new THREE.CSS3DObject( element );
  // console.log(object)
  // object.position.x = 0
  // object.position.y = 0
  // object.position.z = 0
  // scene2.add( object );
	//

  scene.add(fileDisplay)

}
function animate() {
  light.position.copy( camera.position );

  setTimeout( function() {
  requestAnimationFrame( animate );
    renderer.render( scene, camera );
  	renderer2.render( scene2, camera );
  }, 30 );
	controls.update();



  // if (scene.children[1]){
  //   var ptWidth = toScreenPosition(scene.children[1])
  //   $('#alignbox')
  //                .css('left', ptWidth.x + "px")
  //                .css('top', ptWidth.y + "px");
  // }

}





function makeSprite(scene, rendererType, vals) {
    var canvas = document.createElement('canvas'),
        context = canvas.getContext('2d'),
        metrics = null,
        textHeight = 100,
        textWidth = 0,
        actualFontSize = 6;
    var txt = vals.text;
    if (vals.size) actualFontSize = vals.size;
    context.font = "normal " + textHeight + "px Arial";
    metrics = context.measureText(txt);
    var textWidth = metrics.width;
    canvas.width = textWidth;
    canvas.height = textHeight;
    context.font = "normal " + textHeight + "px Arial";
    context.textAlign = "center";
    context.textBaseline = "middle";
    context.fillStyle = vals.color;
    context.fillText(txt, textWidth / 2, textHeight / 2);
    var texture = new THREE.Texture(canvas);
    texture.needsUpdate = true;
    texture.minFilter = THREE.LinearFilter;
    var material = new THREE.SpriteMaterial({
        map: texture,
        side:THREE.DoubleSide
    });
    material.transparent = true;
    var textObject = new THREE.Object3D();
    textObject.position.x = vals.x;
    textObject.position.y = vals.y;
    textObject.position.z = vals.z;
    var sprite = new THREE.Sprite(material);
    textObject.textHeight = actualFontSize;
    textObject.textWidth = (textWidth / textHeight) * textObject.textHeight;
    if (rendererType == "2d") {
        sprite.scale.set(textObject.textWidth / textWidth, textObject.textHeight / textHeight, 1);
    } else {
        sprite.scale.set(textWidth / textHeight * actualFontSize, actualFontSize, 1);
    }
    textObject.add(sprite);
    return textObject;
}

$(window).on('resize', function () {
    sceneWidth = document.getElementById("renderArea").offsetWidth,
    sceneHeight = document.getElementById("renderArea").offsetHeight;
    //console.log("got resize event. resetting aspect ratio.");
    renderer.setSize(sceneWidth, sceneHeight);
		renderer2.setSize(sceneWidth, sceneHeight);
    camera.aspect = sceneWidth / sceneHeight;
    camera.updateProjectionMatrix();
    // controls.screen.width = window.innerWidth;
    // controls.screen.height = window.innerHeight;
    // that.wakeAnimate();
    //render();
});

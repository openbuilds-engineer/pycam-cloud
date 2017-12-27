var viewJSON = Bind({
  view: {
    files: [
      // threejs meshes pushed here by loaders
    ],
  },
}, {
  'view.files': {
    dom: '#filelistJSON',
    transform: function (files) {
      console.log(files)
      return "<tr><td>" + this.safe(files.userData.filename) + "</td><td><button class='btn-sm btn btn-danger' onclick='removeFile(\""+files.uuid+"\")'>Del</button></td></tr>"
    }
  },
});


//uibind.js keeps the state, we just add to it from loaders
fileDisplay = new THREE.Object3D()
fileDisplay.children = viewJSON.view.files
//but then we display it from here. Only once.... from here forth, the content of viewJSON.view.files == scene.children[1].children (;
scene.add(fileDisplay)

function removeFile(uuid) {
for(i=0; i<viewJSON.view.files.length; i++){
    if(viewJSON.view.files[i].uuid == uuid){
    viewJSON.view.files.splice(i, 1);
    // console.log("FOUNDIT")
    }
  }
}

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
      return '<tr><td>' + this.safe(files.userData.filename) + '</td><td>' + this.safe(files.userData.type) + '</td></tr>'
    }
  },
});

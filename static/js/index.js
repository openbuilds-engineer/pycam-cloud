var files = []; // array to hold all loaded files

var socket = io();
socket.on('pycamprogress', function(msg){
  $("#pycamprogressspan").html(msg+"%")
  console.log("pycam: " + msg + " %")
  $('#pycamprogressbar').css('width', msg+'%').attr('aria-valuenow', msg);
});
socket.on('uploadprogress', function(msg){
  $("#uploadprogressspan").html(msg+"%")
  console.log("upload: " + msg + " %")
  $('#uploadprogressbar').css('width', msg+'%').attr('aria-valuenow', msg);
});
socket.on('startupload', function(msg){
  $("#uploadform").hide()
  // $("#uploadprogress").show()
});
socket.on('doneupload', function(msg){
  $("#uploadform").show()
  // $("#uploadprogress").hide()
});

function readFile(evt) {
    console.group("New FileOpen Event:");
    console.log(evt);
    console.groupEnd();
    $("#drop1").dropdown("toggle");
    // Files
    var files = evt.target.files || evt.dataTransfer.files;
    for (var i = 0; i < files.length; i++) {
        loadFile(files[i]);
    }
}

// load file
function loadFile(f) {
    // Filereader
    if (f) {
        var r = new FileReader();
      if (f.name.match(/.stl$/i)) {
            //r.readAsText(f);
            // Remove the UI elements from last run
            console.log("STL File");
            r.onload = function(event) {
              loadSTL(r.result, f.name)
            };
            // start reading file as array buffer
            r.readAsArrayBuffer(f);
            console.log("Opened STL");
        } else {
          // Nothing
        }
    }
    document.getElementById('filename').value = '';

}

function stltobackend() {
   $.ajax({
       url: '/',
       type: 'POST',
       data: new FormData($('#uploadform')[0]),
       // Tell jQuery not to process data or worry about content-type
       // You *must* include these options!
       cache: false,
       contentType: false,
       processData: false,
       // Custom XMLHttpRequest
       xhr: function() {
           var myXhr = $.ajaxSettings.xhr();
           return myXhr;
       },
   });
}

$(document).ready(function() {

  var fileName = document.getElementById('filename');
  fileName.addEventListener('change', readFile, false);



 });

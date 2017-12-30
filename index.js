var formidable = require('formidable')
var express = require('express');
var util = require('util');
// socket.io
var app = require('express')();
var server = require('http').Server(app);
var io = require('socket.io')(server);
var uploadprogress = 0, lastsentuploadprogress = 0;
var pycamprogress = 0, lastsentpycamprogress = 0;

var fs = require("fs");

var starttime;

server.listen(3000);

io.on('connection', function (socket) {
  socket.join("sessionId");
  // fs.readFile(__dirname + '/uploads/' + "file.gcode", "utf8", function(error, text) {
  //   if (error)
  //     throw error;
  //   console.log("The file contained:", text);
  //   io.sockets.in('sessionId').emit('gcode', text);
  // });

  socket.on('fetchgcode', function(data) {
    fs.readFile(__dirname + '/uploads/' + "file.gcode", "utf8", function(error, text) {
      if (error)
        throw error;
      console.log("The file contained:", text);
      io.sockets.in('sessionId').emit('gcode', text);
    });
  })
});

app.use(express.static(__dirname + '/static'));

app.get('/', function (req, res){
    res.sendFile(__dirname + '/static/index.html');
});

app.post('/', function (req, res){
    // console.log(req)
    uploadprogress = 0
    var form = new formidable.IncomingForm();

    // form.parse(req);
    form.parse(req, function(err, fields, files) {
      // console.log(util.inspect({fields: fields, files: files}));
      runpycam(files.file.path)
    });

    form.on('fileBegin', function (name, file){
        // Emitted whenever a new file is detected in the upload stream. Use this event if you want to stream the file to somewhere else while buffering the upload on the file system.
        console.log('Uploading ' + file.name);
        file.path = __dirname + '/uploads/' + file.name;
        io.sockets.in('sessionId').emit('startupload', 'STARTING');
    });

    form.on('progress', function(bytesReceived, bytesExpected) {
        uploadprogress = parseInt(((bytesReceived * 100) / bytesExpected).toFixed(0));
        if (uploadprogress != lastsentuploadprogress) {
          io.sockets.in('sessionId').emit('uploadprogress', uploadprogress);
          lastsentuploadprogress = uploadprogress;
        }
    });

    form.on('file', function (name, file){
        // Emitted whenever a field / file pair has been received. file is an instance of File.
        // console.log('Uploaded ' + file.path);
        io.sockets.in('sessionId').emit('doneupload', 'COMPLETE');
    });

    form.on('aborted', function() {
      // Emitted when the request was aborted by the user. Right now this can be due to a 'timeout' or 'close' event on the socket. After this event is emitted, an error event will follow. In the future there will be a separate 'timeout' event (needs a change in the node core).
    });

    form.on('end', function() {
      //Emitted when the entire request has been received, and all contained files have finished flushing to disk. This is a great place for you to send your response.
    });

    res.sendFile(__dirname + '/static/index.html');
});



var options = {
  // PyCAM 0.5.1 CLI Options
  // General options:
  c: null, //  load a task settings file "config.file"
  unit: "mm", // choose 'mm' or 'inch' for all numbers. By default 'mm' is assumed.
  collisionEngine: null, //Choose a specific collision detection engine. The default is 'triangles'. Use 'help' to get a list of possible engines.
  boundaryMode: null , // specify if the mill tool (including its radius) should move completely 'inside', 'along' or 'outside' the defined processing boundary.
  disablePsyco: true , //disable the Psyco just-in-time-compiler even if it is available
  numberOfProcesses: null , //override the default detection of multiple CPU cores. Parallel processing only works with Python 2.6 (or later) or with the additional 'multiprocessing' module.
  enableServer: null , // enable a local server and (optionally) remote worker servers.
  remoteServer: null , //Connect to a remote task server to distribute the processing load. The server is given as an IP or arofr hostname with an optional port (default: 1250) separated by a colon.
  startServerOnly: null , //Start only a local server for handling remote requests
  serverAuthKey: null , //Secret used for connecting to a remote server or for granting access to remote clients.
  q: null , // quiet
  d: null , //debug
  progress: "text" , //specify the type of progress bar used in non-GUI mode. The following options are available: text, none, bar, dot.
  profiling: null , //PROFILE_DESTINATION store profiling statistics in a file (only for debugging)
  v: null , // version
  // Export formats:
  // Export the resulting toolpath or meta-data in various formats. These
  // options trigger the non-interactive mode. Thus the GUI is disabled.
  exportGcode: __dirname + '/uploads/file.gcode', //export the generated toolpaths to a file
  exportTaskConfig: null, //export the current task configuration (mainly for debugging)
  // Tool definition:
  // Specify the tool parameters. The default tool is spherical and has a
  // diameter of 1 unit. The default speeds are 1000 units/minute
  // (feedrate) and 250 (spindle rotations per minute)
  toolShape: "spherical" , // tool shape for the operation (cylindrical, spherical, toroidal)
  toolSize: 3.175 , // diameter of the tool
  toolTorusSize: null , // torus diameter of the tool (only for toroidal tool)
  toolFeedrate: 800 , // allowed movement velocity of the tool (units/minute)
  toolSpindleSpeed: null ,  //rotation speed of the tool (S=???)
  toolId: null , //tool ID - to be used for tool selection via GCode (default: 1)
  // Process definition:
  // Specify the process parameters: toolpath strategy, layer height, and
  // others. A typical roughing operation is configured by default.
  processPathDirection: "x" , // primary direction of the generated toolpath (x/y/xy)
  processPathStrategy: "surface" , //one of the available toolpath strategies (layer, surface, contour-follow, contour-polygon, engrave)
  processMaterialAllowance: null , //minimum distance between the tool and the object (for rough processing)
  processStepDown: null , //he maximum thickness of each processed material layer (only for 'layer' strategy)
  processOverlapPercent: 80 , // how much should two adjacent parallel toolpaths overlap each other (0..99)
  processMillingStyle: null , //milling style (conventional / climb / ignore)
  safetyHeight: 4 , // height for safe re-positioning moves
  processEngraveOffset: null , //engrave along the contour of a model with a given distance (only for 'engrave' strategy)
  // Boundary definition:
  // Specify the outer limits of the processing area (x/y/z). You may
  // choose between 'relative_margin' (margin is given as percentage of the
  // respective model dimension), 'fixed_margin' (margin for each face
  // given in absolute units of length) and 'custom' (absolute coordinates
  // of the bounding box - regardless of the model size and position).
  // Negative values are allowed and can make sense (e.g. negative margin).
  boundsType: null , // type of the boundary definition (relative-margin, fixed-margin, custom)
  boundsLower: null , // comma-separated x/y/z combination of the lower boundary (e.g. '4,4,-0.5')
  boundsUpper: null , // comma-separated x/y/z combination of the upper boundary (e.g. '12,5.5,0')
  // Support structure:
  // An optional support structure can be used to keep the object in place
  // during the mill operation. The support structure can be removed
  // manually afterwards. Various types of support structures are
  // available. Support structures are disabled by default.
  supportType: null , //type of the support structure (default: none) grid/distributed/none
  supportProfileHeight: null , //  height of the support profile
  supportProfileThickness: null , //width of the support profile
  supportGridDistanceX: null , //distance along the x-axis between two adjacent parallel lines of the support structure(only for grid type)
  supportGridDistanceY: null , // distance along the y-axis between two adjacent parallel lines of the support structure (only for grid type)
  supportGridOffsetX: null , //shift the support grid along the x axis
  supportGridOffsetY: null , //shift the support grid along the y axis
  supportDistributedDistance: null , // average distance between two adjacent support bridges
  supportDistributedMinimum: null , // minimum number of support bridges per polygon
  supportDistributedLength: null , // length of each support bridge
  // GCode settings:
  // Specify some details of the generated GCode.
  gcodeNoStartStopSpindle: null , //do not start the spindle before and stop it after each operation (M3/M5)
  gcodeMinimumStep: null , // mimimum axial distance between two machine positions. Any shorter move is not written to GCode (default: 0.00001).
  gcodePathMode: null , //hoose the GCode path mode from 'exact_path', 'exact_stop' and 'continuous'. Use '--gcode-motion-tolerance' and and '--gcode-naive-tolerance' if you want to limit the deviation. See http://linuxcnc.org/docs/html/gcode_main.html (G61) for details.
  gcodeMotionTolerance: null , //he optional motion tolerance for 'continuous' path mode (G64).
  gcodeNaiveTolerance: null , //   the optional naive CAM tolerance for 'continuous' path mode (G64).
  // External programs:
  // Some optional external programs are used for format conversions.
  locationInkscape: null , //  location of the Inkscape executable. This program is required for importing SVG files.
  locationPstoedit: null // location of the PStoEdit executable. This program is required for importing SVG files.
};

const fixPath = require('fix-path')();

function runpycam(stl) {
  console.log(stl)
  var path = require('path');
  var exePath = path.resolve(__dirname, './bin/pycam');

  var optionsString = ["-u"]
  optionsString.push(exePath);

  for (const i in options) {
    if (options[i] != null && options[i] != true) { // Only print non-null options
      // console.log("--" + camelCaseToDash(i) + "=" +  options[i]);
      optionsString.push("--" + camelCaseToDash(i) + "=" +  options[i]);
    }
    if (options[i] == true) { // options set to true is non-valued switches (like --disable-psyco etc)
      // console.log("--" + camelCaseToDash(i));
      optionsString.push("--" + camelCaseToDash(i));
    }
  }

  optionsString.push(stl)

  const { spawn } = require('child_process');
  // const ls = spawn("python", [exePath, "--unit=mm", "--export-gcode=file.gcode" ]);
  const pycam = spawn("python", optionsString);
  starttime = +new Date();

  pycam.stdout.on('data', (data) => {
    var string = JSON.stringify(data.toString().replace(/[\"]+/g, '')).replace(/^"(.*)"$/, '$1');;
    var lines = string.split(/\r?\n|[\\b]+/);
    for (i=0; i<lines.length; i++){
      var line = lines[i];
      // var line = line.replace("\\b", '');
      if (line.length > 0 ) {

        if (line.match(/[0-9]+% [A-Za-z0-9_.]+: [A-Za-z0-9_.]+ [A-Za-z0-9_.]+ [0-9]+\/[0-9]+/)) { // found a response from PyCAM --progress=text (buffering sometimes causes issues so only parse on exact regex match)
          var pycamprogress = line.split("%")[0]
          if (pycamprogress != lastsentpycamprogress) {
            var timestamp = +new Date();
            var timeused = timestamp - starttime // milliseconds from start of job, to this % update
            var ms = ((100 / pycamprogress) * timeused) // time remaining estimate
            x = ms / 1000;
            seconds = Math.round(x % 60);
            x /= 60;
            minutes = Math.round(x % 60);
            x /= 60;
            hours = Math.round(x % 24);
            var senddata = [pycamprogress, hours, minutes, seconds ]
            console.log("Progress: " + pycamprogress + "%, " + hours + "h:" + minutes + "m:" + seconds + "s remaining" )
            io.sockets.to('sessionId').emit('pycamprogress', senddata);
            lastsentpycamprogress = pycamprogress;
          }

        } else {
          console.log("stdout: " + line)
        }
      }
    }

  });

  pycam.stderr.on('data', (data) => {

  });

  // pycam.on('close', (code) => {
  //   console.log(`child process exited with code ${code}`);
  // });

  pycam.on('close', (code) => {
    console.log(`child process exited with code ${code}`);
    if (code == 0) {
      fs.readFile(__dirname + '/uploads/' + "file.gcode", "utf8", function(error, text) {
        if (error)
          throw error;
        // console.log("The file contained:", text);
        io.sockets.in('sessionId').emit('gcode', text);
        console.log("Ejected GCODE to Frontend")
      });
    } else {
      console.log("FAILED to run PyCAM, not Ejecting GCODE to frontend")
    }

  });


}

function camelCaseToDash( myStr ) {
    return myStr.replace( /([a-z])([A-Z])/g, '$1-$2' ).toLowerCase();
}

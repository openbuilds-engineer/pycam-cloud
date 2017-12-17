var options = {
  // PyCAM 0.5.1 CLI Options
  // General options:
  c: null, //  load a task settings file "config.file"
  unit: "mm", // choose 'mm' or 'inch' for all numbers. By default 'mm' is assumed.
  collisionEngine: null, //Choose a specific collision detection engine. The default is 'triangles'. Use 'help' to get a list of possible engines.
  boundaryMode: null , // specify if the mill tool (including its radius) should move completely 'inside', 'along' or 'outside' the defined processing boundary.
  disablePsyco: null , //disable the Psyco just-in-time-compiler even if it is available
  numberOfProcesses: null , //override the default detection of multiple CPU cores. Parallel processing only works with Python 2.6 (or later) or with the additional 'multiprocessing' module.
  enableServer: null , // enable a local server and (optionally) remote worker servers.
  remoteServer: null , //Connect to a remote task server to distribute the processing load. The server is given as an IP or arofr hostname with an optional port (default: 1250) separated by a colon.
  startServerOnly: null , //Start only a local server for handling remote requests
  serverAuthKey: null , //Secret used for connecting to a remote server or for granting access to remote clients.
  q: null , // quiet
  d: null , //debug
  progress: null , //specify the type of progress bar used in non-GUI mode. The following options are available: text, none, bar, dot.
  profiling: null , //PROFILE_DESTINATION store profiling statistics in a file (only for debugging)
  v: null , // version
  // Export formats:
  // Export the resulting toolpath or meta-data in various formats. These
  // options trigger the non-interactive mode. Thus the GUI is disabled.
  exportGcode: "file.gcode", //export the generated toolpaths to a file
  exportTaskConfig: null, //export the current task configuration (mainly for debugging)
  // Tool definition:
  // Specify the tool parameters. The default tool is spherical and has a
  // diameter of 1 unit. The default speeds are 1000 units/minute
  // (feedrate) and 250 (spindle rotations per minute)
  toolShape: null , // tool shape for the operation (cylindrical, spherical, toroidal)
  toolSize: null , // diameter of the tool
  toolTorusSize: null , // torus diameter of the tool (only for toroidal tool)
  toolFeedrate: null , // allowed movement velocity of the tool (units/minute)
  toolSpindleSpeed: null ,  //rotation speed of the tool (S=???)
  toolId: null , //tool ID - to be used for tool selection via GCode (default: 1)
  // Process definition:
  // Specify the process parameters: toolpath strategy, layer height, and
  // others. A typical roughing operation is configured by default.
  processPathDirection: null , // primary direction of the generated toolpath (x/y/xy)
  processPathStrategy: null , //one of the available toolpath strategies (layer, surface, contour-follow, contour-polygon, engrave)
  processMaterialAllowance: null , //minimum distance between the tool and the object (for rough processing)
  processStepDown: null , //he maximum thickness of each processed material layer (only for 'layer' strategy)
  processOverlapPercent: null , // how much should two adjacent parallel toolpaths overlap each other (0..99)
  processMillingStyle: null , //milling style (conventional / climb / ignore)
  safetyHeight: null , // height for safe re-positioning moves
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

var optionsString = [];

for (const i in options) {
  if (options[i] != null) { // Only print non-null options
    console.log(camelCaseToDash(i) + ` = ${options[i]}`);
    optionsString.push(camelCaseToDash(i) + `=${options[i]}`);
  }
}


var exePath = path.resolve(__dirname, './bin/pycam');

const { spawn } = require('child_process');
const ls = spawn(exePath, optionsString);

ls.stdout.on('data', (data) => {
  console.log(`stdout: ${data}`);
});

ls.stderr.on('data', (data) => {
  console.log(`stderr: ${data}`);
});

ls.on('close', (code) => {
  console.log(`child process exited with code ${code}`);
});


function camelCaseToDash( myStr ) {
    return myStr.replace( /([a-z])([A-Z])/g, '$1-$2' ).toLowerCase();
}

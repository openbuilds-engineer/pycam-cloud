G40 (disable tool radius compensation)
G49 (disable tool length compensation)
G80 (cancel modal motion)
G54 (select coordinate system 1)
G90 (disable incremental moves)
G21 (metric)
F800.00000
S250.00000
G61 (exact path mode)
;PYCAM_TOOLPATH_SETTINGS: START
;[Bounds]
;maxz = 19.0
;maxx = 58.0
;maxy = 62.0
;minx = -58.0
;miny = -4.0
;minz = -2.0
;
;[Tool]
;torus_radius = 0.125
;shape = SphericalCutter
;tool_radius = 1.5875
;feedrate = 800.0
;
;[Process]
;engrave_offset = 0.0
;step_down = 3.0
;generator = PushCutter
;postprocessor = SimpleCutter
;overlap_percent = 80
;milling_style = ignore
;material_allowance = 0.0
;pocketing_type = none
;path_direction = x
;
;PYCAM_TOOLPATH_SETTINGS: END
G0 Z4.00000
M3 (start spindle)
G04 P3 (wait for 3 seconds)
G0 X-58.00000 Y-4.00000
G1 Z19.00000
G1 X-8.73282
G0 Z4.00000
G0 X8.00000
G1 Z19.00000
G1 X58.00000
G1 Y-3.36538
G1 X8.24368
G0 Z4.00000
G0 X-8.95780
G1 Z19.00000
G1 X-58.00000
G1 Y-2.73077
G1 X-8.95780
G0 Z4.00000
G0 X8.24368
G1 Z19.00000
G1 X58.00000
G1 Y-2.09615
G1 X8.24368
G0 Z4.00000
G0 X-8.95780
G1 Z19.00000
G1 X-58.00000
G1 Y-1.46154
G1 X-8.95780
G0 Z4.00000
G0 X8.24368
G1 Z19.00000
G1 X58.00000
G1 Y-0.82692
G1 X-58.00000
G1 Y-0.19231
G1 X58.00000
G1 Y0.44231
G1 X-58.00000
G1 Y1.07692
G1 X58.00000
G1 Y1.71154
G1 X-58.00000
G1 Y2.34615
G1 X58.00000
G1 Y2.98077
G1 X-58.00000
G1 Y3.61538
G1 X58.00000
G1 Y4.25000
G1 X-58.00000
G1 Y4.88462
G1 X58.00000
G1 Y5.51923
G1 X-58.00000
G1 Y6.15385
G1 X58.00000
G1 Y6.78846
G1 X-58.00000
G1 Y7.42308
G1 X58.00000
G1 Y8.05769
G1 X-58.00000
G1 Y8.69231
G1 X58.00000
G1 Y9.32692
G1 X-58.00000
G1 Y9.96154
G1 X58.00000
G1 Y10.59615
G1 X-58.00000
G1 Y11.23077
G1 X58.00000
G1 Y11.86538
G1 X-58.00000
G1 Y12.50000
G1 X58.00000
G1 Y13.13462
G1 X-58.00000
G1 Y13.76923
G1 X58.00000
G1 Y14.40385
G1 X-58.00000
G1 Y15.03846
G1 X58.00000
G1 Y15.67308
G1 X-58.00000
G1 Y16.30769
G1 X58.00000
G1 Y16.94231
G1 X-58.00000
G1 Y17.57692
G1 X58.00000
G1 Y18.21154
G1 X-58.00000
G1 Y18.84615
G1 X58.00000
G1 Y19.48077
G1 X-58.00000
G1 Y20.11538
G1 X58.00000
G1 Y20.75000
G1 X-58.00000
G1 Y21.38462
G1 X58.00000
G1 Y22.01923
G1 X-58.00000
G1 Y22.65385
G1 X58.00000
G1 Y23.28846
G1 X-58.00000
G1 Y23.92308
G1 X58.00000
G1 Y24.55769
G1 X-58.00000
G1 Y25.19231
G1 X58.00000
G1 Y25.82692
G1 X-58.00000
G1 Y26.46154
G1 X58.00000
G1 Y27.09615
G1 X-58.00000
G1 Y27.73077
G1 X58.00000
G1 Y28.36538
G1 X-58.00000
G1 Y29.00000
G1 X58.00000
G1 Y29.63462
G1 X-58.00000
G1 Y30.26923
G1 X58.00000
G1 Y30.90385
G1 X-58.00000
G1 Y31.53846
G1 X58.00000
G1 Y32.17308
G1 X-58.00000
G1 Y32.80769
G1 X58.00000
G1 Y33.44231
G1 X-58.00000
G1 Y34.07692
G1 X58.00000
G1 Y34.71154
G1 X-58.00000
G1 Y35.34615
G1 X58.00000
G1 Y35.98077
G1 X-58.00000
G1 Y36.61538
G1 X58.00000
G1 Y37.25000
G1 X-58.00000
G1 Y37.88462
G1 X58.00000
G1 Y38.51923
G1 X-58.00000
G1 Y39.15385
G1 X58.00000
G1 Y39.78846
G1 X-58.00000
G1 Y40.42308
G1 X58.00000
G1 Y41.05769
G1 X-58.00000
G1 Y41.69231
G1 X58.00000
G1 Y42.32692
G1 X-58.00000
G1 Y42.96154
G1 X58.00000
G1 Y43.59615
G1 X-58.00000
G1 Y44.23077
G1 X58.00000
G1 Y44.86538
G1 X-58.00000
G1 Y45.50000
G1 X58.00000
G1 Y46.13462
G1 X-58.00000
G1 Y46.76923
G1 X58.00000
G1 Y47.40385
G1 X-58.00000
G1 Y48.03846
G1 X58.00000
G1 Y48.67308
G1 X-58.00000
G1 Y49.30769
G1 X58.00000
G1 Y49.94231
G1 X-58.00000
G1 Y50.57692
G1 X58.00000
G1 Y51.21154
G1 X-58.00000
G1 Y51.84615
G1 X58.00000
G1 Y52.48077
G1 X-58.00000
G1 Y53.11538
G1 X58.00000
G1 Y53.75000
G1 X-58.00000
G1 Y54.38462
G1 X58.00000
G1 Y55.01923
G1 X-58.00000
G1 Y55.65385
G1 X58.00000
G1 Y56.28846
G1 X-58.00000
G1 Y56.92308
G1 X58.00000
G1 Y57.55769
G1 X-58.00000
G1 Y58.19231
G1 X58.00000
G1 Y58.82692
G1 X-58.00000
G1 Y59.46154
G1 X58.00000
G1 Y60.09615
G1 X-58.00000
G1 Y60.73077
G1 X58.00000
G1 Y61.36538
G1 X-58.00000
G1 Y62.00000
G1 X58.00000
G1 Z16.00000
G1 X-58.00000
G1 Y61.36538
G1 X58.00000
G1 Y60.73077
G1 X-58.00000
G1 Y60.09615
G1 X58.00000
G1 Y59.46154
G1 X-58.00000
G1 Y58.82692
G1 X58.00000
G1 Y58.19231
G1 X-58.00000
G1 Y57.55769
G1 X58.00000
G1 Y56.92308
G1 X-58.00000
G1 Y56.28846
G1 X58.00000
G1 Y55.65385
G1 X-58.00000
G1 Y55.01923
G1 X58.00000
G1 Y54.38462
G1 X-58.00000
G1 Y53.75000
G1 X58.00000
G1 Y53.11538
G1 X-58.00000
G1 Y52.48077
G1 X58.00000
G1 Y51.84615
G1 X-58.00000
G1 Y51.21154
G1 X58.00000
G1 Y50.57692
G1 X-58.00000
G1 Y49.94231
G1 X58.00000
G1 Y49.30769
G1 X-58.00000
G1 Y48.67308
G1 X58.00000
G1 Y48.03846
G1 X-58.00000
G1 Y47.40385
G1 X58.00000
G1 Y46.76923
G1 X-58.00000
G1 Y46.13462
G1 X58.00000
G1 Y45.50000
G1 X-58.00000
G1 Y44.86538
G1 X58.00000
G1 Y44.23077
G1 X-58.00000
G1 Y43.59615
G1 X58.00000
G1 Y42.96154
G1 X-58.00000
G1 Y42.32692
G1 X58.00000
G1 Y41.69231
G1 X-58.00000
G1 Y41.05769
G1 X58.00000
G1 Y40.42308
G1 X-58.00000
G1 Y39.78846
G1 X58.00000
G1 Y39.15385
G1 X-58.00000
G1 Y38.51923
G1 X58.00000
G1 Y37.88462
G1 X-58.00000
G1 Y37.25000
G1 X58.00000
G1 Y36.61538
G1 X-58.00000
G1 Y35.98077
G1 X58.00000
G1 Y35.34615
G1 X-58.00000
G1 Y34.71154
G1 X58.00000
G1 Y34.07692
G1 X-58.00000
G1 Y33.44231
G1 X58.00000
G1 Y32.80769
G1 X-58.00000
G1 Y32.17308
G1 X58.00000
G1 Y31.53846
G1 X-58.00000
G1 Y30.90385
G1 X58.00000
G1 Y30.26923
G1 X-58.00000
G1 Y29.63462
G1 X58.00000
G1 Y29.00000
G1 X-58.00000
G1 Y28.36538
G1 X58.00000
G1 Y27.73077
G1 X-58.00000
G1 Y27.09615
G1 X58.00000
G1 Y26.46154
G1 X-58.00000
G1 Y25.82692
G1 X58.00000
G1 Y25.19231
G1 X-58.00000
G1 Y24.55769
G1 X58.00000
G1 Y23.92308
G1 X-58.00000
G1 Y23.28846
G1 X58.00000
G1 Y22.65385
G1 X-58.00000
G1 Y22.01923
G1 X58.00000
G1 Y21.38462
G1 X-58.00000
G1 Y20.75000
G1 X58.00000
G1 Y20.11538
G1 X-58.00000
G1 Y19.48077
G1 X58.00000
G1 Y18.84615
G1 X-58.00000
G1 Y18.21154
G1 X58.00000
G1 Y17.57692
G1 X-58.00000
G1 Y16.94231
G1 X58.00000
G1 Y16.30769
G1 X-58.00000
G1 Y15.67308
G1 X58.00000
G1 Y15.03846
G1 X-58.00000
G1 Y14.40385
G1 X58.00000
G1 Y13.76923
G1 X-58.00000
G1 Y13.13462
G1 X58.00000
G1 Y12.50000
G1 X-58.00000
G1 Y11.86538
G1 X58.00000
G1 Y11.23077
G1 X-58.00000
G1 Y10.59615
G1 X58.00000
G1 Y9.96154
G1 X-58.00000
G1 Y9.32692
G1 X58.00000
G1 Y8.69231
G1 X-58.00000
G1 Y8.05769
G1 X58.00000
G1 Y7.42308
G1 X-58.00000
G1 Y6.78846
G1 X58.00000
G1 Y6.15385
G1 X-58.00000
G1 Y5.51923
G1 X58.00000
G1 Y4.88462
G1 X-58.00000
G1 Y4.25000
G1 X58.00000
G1 Y3.61538
G1 X-58.00000
G1 Y2.98077
G1 X58.00000
G1 Y2.34615
G1 X1.73819
G0 Z4.00000
G0 X-1.73819
G1 Z16.00000
G1 X-58.00000
G1 Y1.71154
G1 X-2.34362
G0 Z4.00000
G0 X2.34362
G1 Z16.00000
G1 X58.00000
G1 Y1.07692
G1 X2.56161
G0 Z4.00000
G0 X-2.56161
G1 Z16.00000
G1 X-58.00000
G1 Y0.44231
G1 X-15.58342
G0 Z4.00000
G0 X15.24905
G1 Z16.00000
G1 X58.00000
G1 Y-0.19231
G1 X16.50338
G0 Z4.00000
G0 X-16.78793
G1 Z16.00000
G1 X-58.00000
G1 Y-0.82692
G1 X-17.11754
G0 Z4.00000
G0 X16.87012
G1 Z16.00000
G1 X58.00000
G1 Y-1.46154
G1 X16.88653
G0 Z4.00000
G0 X-17.13420
G1 Z16.00000
G1 X-58.00000
G1 Y-2.09615
G1 X-17.13420
G0 Z4.00000
G0 X16.88653
G1 Z16.00000
G1 X58.00000
G1 Y-2.73077
G1 X16.88653
G0 Z4.00000
G0 X-17.13420
G1 Z16.00000
G1 X-58.00000
G1 Y-3.36538
G1 X-17.12653
G0 Z4.00000
G0 X16.88653
G1 Z16.00000
G1 X58.00000
G1 Y-4.00000
G1 X16.88653
G0 Z4.00000
G0 X-17.13229
G1 Z16.00000
G1 X-58.00000
G1 Z13.00000
G1 X-19.84960
G0 Z4.00000
G0 X19.81893
G1 Z13.00000
G1 X58.00000
G1 Y-3.36538
G1 X19.81893
G0 Z4.00000
G0 X-19.84960
G1 Z13.00000
G1 X-58.00000
G1 Y-2.73077
G1 X-19.84960
G0 Z4.00000
G0 X19.81893
G1 Z13.00000
G1 X58.00000
G1 Y-2.09615
G1 X19.82704
G0 Z4.00000
G0 X-19.84960
G1 Z13.00000
G1 X-58.00000
G1 Y-1.46154
G1 X-19.84960
G0 Z4.00000
G0 X19.82704
G1 Z13.00000
G1 X58.00000
G1 Y-0.82692
G1 X19.80722
G0 Z4.00000
G0 X-19.83823
G1 Z13.00000
G1 X-58.00000
G1 Y-0.19231
G1 X-19.58294
G0 Z4.00000
G0 X19.54584
G1 Z13.00000
G1 X58.00000
G1 Y0.44231
G1 X18.65812
G0 Z4.00000
G0 X-18.71307
G1 Z13.00000
G1 X-58.00000
G1 Y1.07692
G1 X-2.58750
G0 Z4.00000
G0 X2.58750
G1 Z13.00000
G1 X58.00000
G1 Y1.71154
G1 X2.58750
G0 Z4.00000
G0 X-2.58750
G1 Z13.00000
G1 X-58.00000
G1 Y2.34615
G1 X-2.58750
G0 Z4.00000
G0 X2.58750
G1 Z13.00000
G1 X58.00000
G1 Y2.98077
G1 X2.48784
G0 Z4.00000
G0 X-2.48784
G1 Z13.00000
G1 X-58.00000
G1 Y3.61538
G1 X-2.13142
G0 Z4.00000
G0 X2.13142
G1 Z13.00000
G1 X58.00000
G1 Y4.25000
G1 X-58.00000
G1 Y4.88462
G1 X58.00000
G1 Y5.51923
G1 X-58.00000
G1 Y6.15385
G1 X58.00000
G1 Y6.78846
G1 X-58.00000
G1 Y7.42308
G1 X58.00000
G1 Y8.05769
G1 X-58.00000
G1 Y8.69231
G1 X58.00000
G1 Y9.32692
G1 X-58.00000
G1 Y9.96154
G1 X58.00000
G1 Y10.59615
G1 X-58.00000
G1 Y11.23077
G1 X58.00000
G1 Y11.86538
G1 X-58.00000
G1 Y12.50000
G1 X58.00000
G1 Y13.13462
G1 X-58.00000
G1 Y13.76923
G1 X58.00000
G1 Y14.40385
G1 X-58.00000
G1 Y15.03846
G1 X58.00000
G1 Y15.67308
G1 X-58.00000
G1 Y16.30769
G1 X58.00000
G1 Y16.94231
G1 X-58.00000
G1 Y17.57692
G1 X58.00000
G1 Y18.21154
G1 X-58.00000
G1 Y18.84615
G1 X58.00000
G1 Y19.48077
G1 X-58.00000
G1 Y20.11538
G1 X58.00000
G1 Y20.75000
G1 X-58.00000
G1 Y21.38462
G1 X58.00000
G1 Y22.01923
G1 X-58.00000
G1 Y22.65385
G1 X58.00000
G1 Y23.28846
G1 X-58.00000
G1 Y23.92308
G1 X58.00000
G1 Y24.55769
G1 X-58.00000
G1 Y25.19231
G1 X58.00000
G1 Y25.82692
G1 X-58.00000
G1 Y26.46154
G1 X58.00000
G1 Y27.09615
G1 X-58.00000
G1 Y27.73077
G1 X58.00000
G1 Y28.36538
G1 X-58.00000
G1 Y29.00000
G1 X58.00000
G1 Y29.63462
G1 X-58.00000
G1 Y30.26923
G1 X58.00000
G1 Y30.90385
G1 X-58.00000
G1 Y31.53846
G1 X58.00000
G1 Y32.17308
G1 X-58.00000
G1 Y32.80769
G1 X58.00000
G1 Y33.44231
G1 X-58.00000
G1 Y34.07692
G1 X58.00000
G1 Y34.71154
G1 X-58.00000
G1 Y35.34615
G1 X58.00000
G1 Y35.98077
G1 X-58.00000
G1 Y36.61538
G1 X58.00000
G1 Y37.25000
G1 X-58.00000
G1 Y37.88462
G1 X58.00000
G1 Y38.51923
G1 X-58.00000
G1 Y39.15385
G1 X58.00000
G1 Y39.78846
G1 X-58.00000
G1 Y40.42308
G1 X58.00000
G1 Y41.05769
G1 X-58.00000
G1 Y41.69231
G1 X58.00000
G1 Y42.32692
G1 X-58.00000
G1 Y42.96154
G1 X58.00000
G1 Y43.59615
G1 X-58.00000
G1 Y44.23077
G1 X58.00000
G1 Y44.86538
G1 X-58.00000
G1 Y45.50000
G1 X58.00000
G1 Y46.13462
G1 X-58.00000
G1 Y46.76923
G1 X58.00000
G1 Y47.40385
G1 X-58.00000
G1 Y48.03846
G1 X58.00000
G1 Y48.67308
G1 X-58.00000
G1 Y49.30769
G1 X58.00000
G1 Y49.94231
G1 X-58.00000
G1 Y50.57692
G1 X58.00000
G1 Y51.21154
G1 X-58.00000
G1 Y51.84615
G1 X58.00000
G1 Y52.48077
G1 X-58.00000
G1 Y53.11538
G1 X58.00000
G1 Y53.75000
G1 X-58.00000
G1 Y54.38462
G1 X58.00000
G1 Y55.01923
G1 X-58.00000
G1 Y55.65385
G1 X58.00000
G1 Y56.28846
G1 X-58.00000
G1 Y56.92308
G1 X58.00000
G1 Y57.55769
G1 X-58.00000
G1 Y58.19231
G1 X58.00000
G1 Y58.82692
G1 X-58.00000
G1 Y59.46154
G1 X58.00000
G1 Y60.09615
G1 X-58.00000
G1 Y60.73077
G1 X58.00000
G1 Y61.36538
G1 X-58.00000
G1 Y62.00000
G1 X58.00000
G1 Z10.00000
G1 X-58.00000
G1 Y61.36538
G1 X58.00000
G1 Y60.73077
G1 X-58.00000
G1 Y60.09615
G1 X58.00000
G1 Y59.46154
G1 X-58.00000
G1 Y58.82692
G1 X58.00000
G1 Y58.19231
G1 X-58.00000
G1 Y57.55769
G1 X58.00000
G1 Y56.92308
G1 X-58.00000
G1 Y56.28846
G1 X58.00000
G1 Y55.65385
G1 X-58.00000
G1 Y55.01923
G1 X58.00000
G1 Y54.38462
G1 X-58.00000
G1 Y53.75000
G1 X58.00000
G1 Y53.11538
G1 X-58.00000
G1 Y52.48077
G1 X58.00000
G1 Y51.84615
G1 X-58.00000
G1 Y51.21154
G1 X58.00000
G1 Y50.57692
G1 X-58.00000
G1 Y49.94231
G1 X58.00000
G1 Y49.30769
G1 X-58.00000
G1 Y48.67308
G1 X58.00000
G1 Y48.03846
G1 X-58.00000
G1 Y47.40385
G1 X58.00000
G1 Y46.76923
G1 X-58.00000
G1 Y46.13462
G1 X58.00000
G1 Y45.50000
G1 X-58.00000
G1 Y44.86538
G1 X58.00000
G1 Y44.23077
G1 X-58.00000
G1 Y43.59615
G1 X58.00000
G1 Y42.96154
G1 X-58.00000
G1 Y42.32692
G1 X58.00000
G1 Y41.69231
G1 X-58.00000
G1 Y41.05769
G1 X58.00000
G1 Y40.42308
G1 X-58.00000
G1 Y39.78846
G1 X58.00000
G1 Y39.15385
G1 X-58.00000
G1 Y38.51923
G1 X58.00000
G1 Y37.88462
G1 X-58.00000
G1 Y37.25000
G1 X58.00000
G1 Y36.61538
G1 X-58.00000
G1 Y35.98077
G1 X58.00000
G1 Y35.34615
G1 X-58.00000
G1 Y34.71154
G1 X58.00000
G1 Y34.07692
G1 X-58.00000
G1 Y33.44231
G1 X58.00000
G1 Y32.80769
G1 X-58.00000
G1 Y32.17308
G1 X58.00000
G1 Y31.53846
G1 X-58.00000
G1 Y30.90385
G1 X58.00000
G1 Y30.26923
G1 X-58.00000
G1 Y29.63462
G1 X58.00000
G1 Y29.00000
G1 X-58.00000
G1 Y28.36538
G1 X58.00000
G1 Y27.73077
G1 X-58.00000
G1 Y27.09615
G1 X58.00000
G1 Y26.46154
G1 X-58.00000
G1 Y25.82692
G1 X58.00000
G1 Y25.19231
G1 X-58.00000
G1 Y24.55769
G1 X58.00000
G1 Y23.92308
G1 X-58.00000
G1 Y23.28846
G1 X58.00000
G1 Y22.65385
G1 X-58.00000
G1 Y22.01923
G1 X58.00000
G1 Y21.38462
G1 X-58.00000
G1 Y20.75000
G1 X58.00000
G1 Y20.11538
G1 X-58.00000
G1 Y19.48077
G1 X58.00000
G1 Y18.84615
G1 X-58.00000
G1 Y18.21154
G1 X58.00000
G1 Y17.57692
G1 X-58.00000
G1 Y16.94231
G1 X58.00000
G1 Y16.30769
G1 X-58.00000
G1 Y15.67308
G1 X58.00000
G1 Y15.03846
G1 X-58.00000
G1 Y14.40385
G1 X58.00000
G1 Y13.76923
G1 X-58.00000
G1 Y13.13462
G1 X58.00000
G1 Y12.50000
G1 X-58.00000
G1 Y11.86538
G1 X58.00000
G1 Y11.23077
G1 X-58.00000
G1 Y10.59615
G1 X58.00000
G1 Y9.96154
G1 X-58.00000
G1 Y9.32692
G1 X58.00000
G1 Y8.69231
G1 X-58.00000
G1 Y8.05769
G1 X58.00000
G1 Y7.42308
G1 X-58.00000
G1 Y6.78846
G1 X58.00000
G1 Y6.15385
G1 X-58.00000
G1 Y5.51923
G1 X-1.78175
G0 Z4.00000
G0 X1.78175
G1 Z10.00000
G1 X58.00000
G1 Y4.88462
G1 X2.35828
G0 Z4.00000
G0 X-2.35828
G1 Z10.00000
G1 X-58.00000
G1 Y4.25000
G1 X-2.56577
G0 Z4.00000
G0 X2.56577
G1 Z10.00000
G1 X58.00000
G1 Y3.61538
G1 X2.58750
G0 Z4.00000
G0 X-2.58750
G1 Z10.00000
G1 X-58.00000
G1 Y2.98077
G1 X-2.58750
G0 Z4.00000
G0 X2.58750
G1 Z10.00000
G1 X58.00000
G1 Y2.34615
G1 X2.58750
G0 Z4.00000
G0 X-2.58750
G1 Z10.00000
G1 X-58.00000
G1 Y1.71154
G1 X-2.58750
G0 Z4.00000
G0 X2.58750
G1 Z10.00000
G1 X58.00000
G1 Y1.07692
G1 X2.58750
G0 Z4.00000
G0 X-2.58750
G1 Z10.00000
G1 X-58.00000
G1 Y0.44231
G1 X-20.73880
G0 Z4.00000
G0 X20.73880
G1 Z10.00000
G1 X58.00000
G1 Y-0.19231
G1 X21.58420
G0 Z4.00000
G0 X-21.58420
G1 Z10.00000
G1 X-58.00000
G1 Y-0.82692
G1 X-21.83823
G0 Z4.00000
G0 X21.83823
G1 Z10.00000
G1 X58.00000
G1 Y-1.46154
G1 X21.84960
G0 Z4.00000
G0 X-21.84960
G1 Z10.00000
G1 X-58.00000
G1 Y-2.09615
G1 X-21.84960
G0 Z4.00000
G0 X21.84960
G1 Z10.00000
G1 X58.00000
G1 Y-2.73077
G1 X21.84960
G0 Z4.00000
G0 X-21.84960
G1 Z10.00000
G1 X-58.00000
G1 Y-3.36538
G1 X-21.84960
G0 Z4.00000
G0 X21.84960
G1 Z10.00000
G1 X58.00000
G1 Y-4.00000
G1 X21.84960
G0 Z4.00000
G0 X-21.84960
G1 Z10.00000
G1 X-58.00000
G1 Z7.00000
G1 X-23.84960
G0 Z4.00000
G0 X23.84960
G1 Z7.00000
G1 X58.00000
G1 Y-3.36538
G1 X23.84960
G0 Z4.00000
G0 X-23.84960
G1 Z7.00000
G1 X-58.00000
G1 Y-2.73077
G1 X-23.84960
G0 Z4.00000
G0 X23.84960
G1 Z7.00000
G1 X58.00000
G1 Y-2.09615
G1 X23.84960
G0 Z4.00000
G0 X-23.84960
G1 Z7.00000
G1 X-58.00000
G1 Y-1.46154
G1 X-23.84960
G0 Z4.00000
G0 X23.84960
G1 Z7.00000
G1 X58.00000
G1 Y-0.82692
G1 X23.83823
G0 Z4.00000
G0 X-23.83823
G1 Z7.00000
G1 X-58.00000
G1 Y-0.19231
G1 X-23.58420
G0 Z4.00000
G0 X23.58420
G1 Z7.00000
G1 X58.00000
G1 Y0.44231
G1 X22.73880
G0 Z4.00000
G0 X-22.73880
G1 Z7.00000
G1 X-58.00000
G1 Y1.07692
G1 X-2.58750
G0 Z4.00000
G0 X2.58750
G1 Z7.00000
G1 X58.00000
G1 Y1.71154
G1 X2.58750
G0 Z4.00000
G0 X-2.58750
G1 Z7.00000
G1 X-58.00000
G1 Y2.34615
G1 X-2.58750
G0 Z4.00000
G0 X2.58750
G1 Z7.00000
G1 X58.00000
G1 Y2.98077
G1 X2.58750
G0 Z4.00000
G0 X-2.58750
G1 Z7.00000
G1 X-58.00000
G1 Y3.61538
G1 X-2.58750
G0 Z4.00000
G0 X2.58750
G1 Z7.00000
G1 X58.00000
G1 Y4.25000
G1 X2.58750
G0 Z4.00000
G0 X-2.58750
G1 Z7.00000
G1 X-58.00000
G1 Y4.88462
G1 X-2.58750
G0 Z4.00000
G0 X2.58750
G1 Z7.00000
G1 X58.00000
G1 Y5.51923
G1 X2.58750
G0 Z4.00000
G0 X-2.58750
G1 Z7.00000
G1 X-58.00000
G1 Y6.15385
G1 X-2.49646
G0 Z4.00000
G0 X2.49646
G1 Z7.00000
G1 X58.00000
G1 Y6.78846
G1 X2.15432
G0 Z4.00000
G0 X-2.15432
G1 Z7.00000
G1 X-58.00000
G1 Y7.42308
G1 X58.00000
G1 Y8.05769
G1 X-58.00000
G1 Y8.69231
G1 X58.00000
G1 Y9.32692
G1 X-58.00000
G1 Y9.96154
G1 X58.00000
G1 Y10.59615
G1 X-58.00000
G1 Y11.23077
G1 X58.00000
G1 Y11.86538
G1 X-58.00000
G1 Y12.50000
G1 X58.00000
G1 Y13.13462
G1 X-58.00000
G1 Y13.76923
G1 X58.00000
G1 Y14.40385
G1 X-58.00000
G1 Y15.03846
G1 X58.00000
G1 Y15.67308
G1 X-58.00000
G1 Y16.30769
G1 X58.00000
G1 Y16.94231
G1 X-58.00000
G1 Y17.57692
G1 X58.00000
G1 Y18.21154
G1 X-58.00000
G1 Y18.84615
G1 X58.00000
G1 Y19.48077
G1 X-58.00000
G1 Y20.11538
G1 X58.00000
G1 Y20.75000
G1 X-58.00000
G1 Y21.38462
G1 X58.00000
G1 Y22.01923
G1 X-58.00000
G1 Y22.65385
G1 X58.00000
G1 Y23.28846
G1 X-58.00000
G1 Y23.92308
G1 X58.00000
G1 Y24.55769
G1 X-58.00000
G1 Y25.19231
G1 X58.00000
G1 Y25.82692
G1 X-58.00000
G1 Y26.46154
G1 X58.00000
G1 Y27.09615
G1 X-58.00000
G1 Y27.73077
G1 X58.00000
G1 Y28.36538
G1 X-58.00000
G1 Y29.00000
G1 X58.00000
G1 Y29.63462
G1 X-58.00000
G1 Y30.26923
G1 X58.00000
G1 Y30.90385
G1 X-58.00000
G1 Y31.53846
G1 X58.00000
G1 Y32.17308
G1 X-58.00000
G1 Y32.80769
G1 X58.00000
G1 Y33.44231
G1 X-58.00000
G1 Y34.07692
G1 X58.00000
G1 Y34.71154
G1 X-58.00000
G1 Y35.34615
G1 X58.00000
G1 Y35.98077
G1 X-58.00000
G1 Y36.61538
G1 X58.00000
G1 Y37.25000
G1 X-58.00000
G1 Y37.88462
G1 X58.00000
G1 Y38.51923
G1 X-58.00000
G1 Y39.15385
G1 X58.00000
G1 Y39.78846
G1 X-58.00000
G1 Y40.42308
G1 X58.00000
G1 Y41.05769
G1 X-58.00000
G1 Y41.69231
G1 X58.00000
G1 Y42.32692
G1 X-58.00000
G1 Y42.96154
G1 X58.00000
G1 Y43.59615
G1 X-58.00000
G1 Y44.23077
G1 X58.00000
G1 Y44.86538
G1 X-58.00000
G1 Y45.50000
G1 X58.00000
G1 Y46.13462
G1 X-58.00000
G1 Y46.76923
G1 X58.00000
G1 Y47.40385
G1 X-58.00000
G1 Y48.03846
G1 X58.00000
G1 Y48.67308
G1 X-58.00000
G1 Y49.30769
G1 X58.00000
G1 Y49.94231
G1 X-58.00000
G1 Y50.57692
G1 X58.00000
G1 Y51.21154
G1 X-58.00000
G1 Y51.84615
G1 X58.00000
G1 Y52.48077
G1 X-58.00000
G1 Y53.11538
G1 X58.00000
G1 Y53.75000
G1 X-58.00000
G1 Y54.38462
G1 X58.00000
G1 Y55.01923
G1 X-58.00000
G1 Y55.65385
G1 X58.00000
G1 Y56.28846
G1 X-58.00000
G1 Y56.92308
G1 X58.00000
G1 Y57.55769
G1 X-58.00000
G1 Y58.19231
G1 X58.00000
G1 Y58.82692
G1 X-58.00000
G1 Y59.46154
G1 X58.00000
G1 Y60.09615
G1 X-58.00000
G1 Y60.73077
G1 X58.00000
G1 Y61.36538
G1 X-58.00000
G1 Y62.00000
G1 X58.00000
G1 Z4.00000
G1 X-58.00000
G1 Y61.36538
G1 X58.00000
G1 Y60.73077
G1 X-58.00000
G1 Y60.09615
G1 X58.00000
G1 Y59.46154
G1 X-58.00000
G1 Y58.82692
G1 X58.00000
G1 Y58.19231
G1 X-58.00000
G1 Y57.55769
G1 X58.00000
G1 Y56.92308
G1 X-58.00000
G1 Y56.28846
G1 X58.00000
G1 Y55.65385
G1 X-58.00000
G1 Y55.01923
G1 X58.00000
G1 Y54.38462
G1 X-58.00000
G1 Y53.75000
G1 X58.00000
G1 Y53.11538
G1 X-58.00000
G1 Y52.48077
G1 X58.00000
G1 Y51.84615
G1 X-58.00000
G1 Y51.21154
G1 X58.00000
G1 Y50.57692
G1 X-58.00000
G1 Y49.94231
G1 X58.00000
G1 Y49.30769
G1 X-58.00000
G1 Y48.67308
G1 X58.00000
G1 Y48.03846
G1 X-58.00000
G1 Y47.40385
G1 X58.00000
G1 Y46.76923
G1 X-58.00000
G1 Y46.13462
G1 X58.00000
G1 Y45.50000
G1 X-58.00000
G1 Y44.86538
G1 X58.00000
G1 Y44.23077
G1 X-58.00000
G1 Y43.59615
G1 X58.00000
G1 Y42.96154
G1 X-58.00000
G1 Y42.32692
G1 X58.00000
G1 Y41.69231
G1 X-58.00000
G1 Y41.05769
G1 X58.00000
G1 Y40.42308
G1 X-58.00000
G1 Y39.78846
G1 X58.00000
G1 Y39.15385
G1 X-58.00000
G1 Y38.51923
G1 X58.00000
G1 Y37.88462
G1 X-58.00000
G1 Y37.25000
G1 X58.00000
G1 Y36.61538
G1 X-58.00000
G1 Y35.98077
G1 X58.00000
G1 Y35.34615
G1 X-58.00000
G1 Y34.71154
G1 X58.00000
G1 Y34.07692
G1 X-58.00000
G1 Y33.44231
G1 X58.00000
G1 Y32.80769
G1 X-58.00000
G1 Y32.17308
G1 X58.00000
G1 Y31.53846
G1 X-58.00000
G1 Y30.90385
G1 X58.00000
G1 Y30.26923
G1 X-58.00000
G1 Y29.63462
G1 X58.00000
G1 Y29.00000
G1 X-58.00000
G1 Y28.36538
G1 X58.00000
G1 Y27.73077
G1 X-58.00000
G1 Y27.09615
G1 X58.00000
G1 Y26.46154
G1 X-58.00000
G1 Y25.82692
G1 X58.00000
G1 Y25.19231
G1 X-58.00000
G1 Y24.55769
G1 X58.00000
G1 Y23.92308
G1 X-58.00000
G1 Y23.28846
G1 X58.00000
G1 Y22.65385
G1 X-58.00000
G1 Y22.01923
G1 X58.00000
G1 Y21.38462
G1 X-58.00000
G1 Y20.75000
G1 X58.00000
G1 Y20.11538
G1 X-58.00000
G1 Y19.48077
G1 X58.00000
G1 Y18.84615
G1 X-58.00000
G1 Y18.21154
G1 X58.00000
G1 Y17.57692
G1 X-58.00000
G1 Y16.94231
G1 X58.00000
G1 Y16.30769
G1 X-58.00000
G1 Y15.67308
G1 X58.00000
G1 Y15.03846
G1 X-58.00000
G1 Y14.40385
G1 X58.00000
G1 Y13.76923
G1 X-58.00000
G1 Y13.13462
G1 X58.00000
G1 Y12.50000
G1 X-58.00000
G1 Y11.86538
G1 X58.00000
G1 Y11.23077
G1 X-58.00000
G1 Y10.59615
G1 X58.00000
G1 Y9.96154
G1 X-58.00000
G1 Y9.32692
G1 X58.00000
G1 Y8.69231
G1 X1.82232
G0 X-1.82232
G1 X-58.00000
G1 Y8.05769
G1 X-2.37237
G0 X2.37237
G1 X58.00000
G1 Y7.42308
G1 X2.56956
G0 X-2.56956
G1 X-58.00000
G1 Y6.78846
G1 X-2.58750
G0 X2.58750
G1 X58.00000
G1 Y6.15385
G1 X2.58750
G0 X-2.58750
G1 X-58.00000
G1 Y5.51923
G1 X-2.58750
G0 X2.58750
G1 X58.00000
G1 Y4.88462
G1 X2.58750
G0 X-2.58750
G1 X-58.00000
G1 Y4.25000
G1 X-2.58750
G0 X2.58750
G1 X58.00000
G1 Y3.61538
G1 X2.58750
G0 X-2.58750
G1 X-58.00000
G1 Y2.98077
G1 X-2.58750
G0 X2.58750
G1 X58.00000
G1 Y2.34615
G1 X2.58750
G0 X-2.58750
G1 X-58.00000
G1 Y1.71154
G1 X-2.58750
G0 X2.58750
G1 X58.00000
G1 Y1.07692
G1 X2.58750
G0 X-2.58750
G1 X-58.00000
G1 Y0.44231
G1 X-24.73880
G0 X24.73880
G1 X58.00000
G1 Y-0.19231
G1 X25.58420
G0 X-25.58420
G1 X-58.00000
G1 Y-0.82692
G1 X-25.83823
G0 X25.83823
G1 X58.00000
G1 Y-1.46154
G1 X25.84960
G0 X-25.84960
G1 X-58.00000
G1 Y-2.09615
G1 X-25.84960
G0 X25.84960
G1 X58.00000
G1 Y-2.73077
G1 X25.84960
G0 X-25.84960
G1 X-58.00000
G1 Y-3.36538
G1 X-25.84960
G0 X25.84960
G1 X58.00000
G1 Y-4.00000
G1 X42.76845
G0 X-54.00000
G1 X-58.00000
G1 Z1.00000
G1 X-57.89968
G0 Z4.00000
G0 X57.89968
G1 Z1.00000
G1 X58.00000
G0 Z4.00000
G0 X52.41250 Y1.71154
G1 Z1.00000
G1 X3.58750
G0 Z4.00000
G0 X-3.58750
G1 Z1.00000
G1 X-52.41250
G1 Y2.34615
G1 X-3.58750
G0 Z4.00000
G0 X3.58750
G1 Z1.00000
G1 X52.41250
G1 Y2.98077
G1 X3.58750
G0 Z4.00000
G0 X-3.58750
G1 Z1.00000
G1 X-52.41250
G1 Y3.61538
G1 X-3.58750
G0 Z4.00000
G0 X3.58750
G1 Z1.00000
G1 X52.41250
G1 Y4.25000
G1 X3.58750
G0 Z4.00000
G0 X-3.58750
G1 Z1.00000
G1 X-52.41250
G1 Y4.88462
G1 X-3.58750
G0 Z4.00000
G0 X3.58750
G1 Z1.00000
G1 X52.41250
G1 Y5.51923
G1 X3.58750
G0 Z4.00000
G0 X-3.58750
G1 Z1.00000
G1 X-52.41250
G1 Y6.15385
G1 X-3.58750
G0 Z4.00000
G0 X3.58750
G1 Z1.00000
G1 X52.41250
G1 Y6.78846
G1 X3.58750
G0 Z4.00000
G0 X-3.58750
G1 Z1.00000
G1 X-52.41250
G1 Y7.42308
G1 X-3.58750
G0 Z4.00000
G0 X3.58750
G1 Z1.00000
G1 X52.41250
G1 Y8.05769
G1 X3.58750
G0 Z4.00000
G0 X-3.58750
G1 Z1.00000
G1 X-52.41250
G1 Y8.69231
G1 X-3.58750
G0 Z4.00000
G0 X3.58750
G1 Z1.00000
G1 X52.41250
G1 Y9.32692
G1 X3.58750
G0 Z4.00000
G0 X-3.58750
G1 Z1.00000
G1 X-52.41250
G1 Y9.96154
G1 X-3.58750
G0 Z4.00000
G0 X3.58750
G1 Z1.00000
G1 X52.41250
G1 Y10.59615
G1 X3.58750
G0 Z4.00000
G0 X-3.58750
G1 Z1.00000
G1 X-52.41250
G1 Y11.23077
G1 X-3.58750
G0 Z4.00000
G0 X3.58750
G1 Z1.00000
G1 X52.41250
G1 Y11.86538
G1 X3.58750
G0 Z4.00000
G0 X-3.58750
G1 Z1.00000
G1 X-52.41250
G1 Y12.50000
G1 X-3.58750
G0 Z4.00000
G0 X3.58750
G1 Z1.00000
G1 X52.41250
G1 Y13.13462
G1 X3.58750
G0 Z4.00000
G0 X-3.58750
G1 Z1.00000
G1 X-52.41250
G1 Y13.76923
G1 X-3.58750
G0 Z4.00000
G0 X3.58750
G1 Z1.00000
G1 X52.41250
G1 Y14.40385
G1 X3.58750
G0 Z4.00000
G0 X-3.58750
G1 Z1.00000
G1 X-52.41250
G1 Y15.03846
G1 X-3.58750
G0 Z4.00000
G0 X3.58750
G1 Z1.00000
G1 X52.41250
G1 Y15.67308
G1 X3.58750
G0 Z4.00000
G0 X-3.58750
G1 Z1.00000
G1 X-52.41250
G1 Y16.30769
G1 X-3.58750
G0 Z4.00000
G0 X3.58750
G1 Z1.00000
G1 X52.41250
G1 Y16.94231
G1 X3.58750
G0 Z4.00000
G0 X-3.58750
G1 Z1.00000
G1 X-52.41250
G1 Y17.57692
G1 X-3.58750
G0 Z4.00000
G0 X3.58750
G1 Z1.00000
G1 X52.41250
G1 Y18.21154
G1 X3.58750
G0 Z4.00000
G0 X-3.58750
G1 Z1.00000
G1 X-52.41250
G1 Y18.84615
G1 X-3.58750
G0 Z4.00000
G0 X3.58750
G1 Z1.00000
G1 X52.41250
G1 Y19.48077
G1 X3.58750
G0 Z4.00000
G0 X-3.58750
G1 Z1.00000
G1 X-52.41250
G1 Y20.11538
G1 X-3.58750
G0 Z4.00000
G0 X3.58750
G1 Z1.00000
G1 X52.41250
G1 Y20.75000
G1 X3.58750
G0 Z4.00000
G0 X-3.58750
G1 Z1.00000
G1 X-52.41250
G1 Y21.38462
G1 X-3.58750
G0 Z4.00000
G0 X3.58750
G1 Z1.00000
G1 X52.41250
G1 Y22.01923
G1 X3.58750
G0 Z4.00000
G0 X-3.58750
G1 Z1.00000
G1 X-52.41250
G1 Y22.65385
G1 X-3.58750
G0 Z4.00000
G0 X3.58750
G1 Z1.00000
G1 X52.41250
G1 Y23.28846
G1 X3.58750
G0 Z4.00000
G0 X-3.58750
G1 Z1.00000
G1 X-52.41250
G1 Y23.92308
G1 X-3.58750
G0 Z4.00000
G0 X3.58750
G1 Z1.00000
G1 X52.41250
G1 Y24.55769
G1 X3.58750
G0 Z4.00000
G0 X-3.58750
G1 Z1.00000
G1 X-52.41250
G1 Y25.19231
G1 X-3.58750
G0 Z4.00000
G0 X3.58750
G1 Z1.00000
G1 X52.41250
G1 Y25.82692
G1 X3.58750
G0 Z4.00000
G0 X-3.58750
G1 Z1.00000
G1 X-52.41250
G1 Y26.46154
G1 X-3.58750
G0 Z4.00000
G0 X3.58750
G1 Z1.00000
G1 X52.41250
G1 Y27.09615
G1 X3.58750
G0 Z4.00000
G0 X-3.58750
G1 Z1.00000
G1 X-52.41250
G1 Y27.73077
G1 X-3.58750
G0 Z4.00000
G0 X3.58750
G1 Z1.00000
G1 X52.41250
G1 Y28.36538
G1 X3.58750
G0 Z4.00000
G0 X-3.58750
G1 Z1.00000
G1 X-52.41250
G1 Y29.00000
G1 X-3.58750
G0 Z4.00000
G0 X3.58750
G1 Z1.00000
G1 X52.41250
G1 Y29.63462
G1 X3.58750
G0 Z4.00000
G0 X-3.58750
G1 Z1.00000
G1 X-52.41250
G1 Y30.26923
G1 X-3.58750
G0 Z4.00000
G0 X3.58750
G1 Z1.00000
G1 X52.41250
G1 Y30.90385
G1 X3.58750
G0 Z4.00000
G0 X-3.58750
G1 Z1.00000
G1 X-52.41250
G1 Y31.53846
G1 X-3.58750
G0 Z4.00000
G0 X3.58750
G1 Z1.00000
G1 X52.41250
G1 Y32.17308
G1 X3.58750
G0 Z4.00000
G0 X-3.58750
G1 Z1.00000
G1 X-52.41250
G1 Y32.80769
G1 X-3.58750
G0 Z4.00000
G0 X3.58750
G1 Z1.00000
G1 X52.41250
G1 Y33.44231
G1 X3.58750
G0 Z4.00000
G0 X-3.58750
G1 Z1.00000
G1 X-52.41250
G1 Y34.07692
G1 X-3.58750
G0 Z4.00000
G0 X3.58750
G1 Z1.00000
G1 X52.41250
G1 Y34.71154
G1 X3.58750
G0 Z4.00000
G0 X-3.58750
G1 Z1.00000
G1 X-52.41250
G1 Y35.34615
G1 X-3.58750
G0 Z4.00000
G0 X3.58750
G1 Z1.00000
G1 X52.41250
G1 Y35.98077
G1 X3.58750
G0 Z4.00000
G0 X-3.58750
G1 Z1.00000
G1 X-52.41250
G1 Y36.61538
G1 X-3.58750
G0 Z4.00000
G0 X3.58750
G1 Z1.00000
G1 X52.41250
G1 Y37.25000
G1 X3.58750
G0 Z4.00000
G0 X-3.58750
G1 Z1.00000
G1 X-52.41250
G1 Y37.88462
G1 X-3.58750
G0 Z4.00000
G0 X3.58750
G1 Z1.00000
G1 X52.41250
G1 Y38.51923
G1 X3.58750
G0 Z4.00000
G0 X-3.58750
G1 Z1.00000
G1 X-52.41250
G1 Y39.15385
G1 X-3.58750
G0 Z4.00000
G0 X3.58750
G1 Z1.00000
G1 X52.41250
G1 Y39.78846
G1 X3.58750
G0 Z4.00000
G0 X-3.58750
G1 Z1.00000
G1 X-52.41250
G1 Y40.42308
G1 X-3.58750
G0 Z4.00000
G0 X3.58750
G1 Z1.00000
G1 X52.41250
G1 Y41.05769
G1 X3.58750
G0 Z4.00000
G0 X-3.58750
G1 Z1.00000
G1 X-52.41250
G1 Y41.69231
G1 X-3.58750
G0 Z4.00000
G0 X3.58750
G1 Z1.00000
G1 X52.41250
G1 Y42.32692
G1 X3.58750
G0 Z4.00000
G0 X-3.58750
G1 Z1.00000
G1 X-52.41250
G1 Y42.96154
G1 X-3.58750
G0 Z4.00000
G0 X3.58750
G1 Z1.00000
G1 X52.41250
G1 Y43.59615
G1 X3.58750
G0 Z4.00000
G0 X-3.58750
G1 Z1.00000
G1 X-52.41250
G1 Y44.23077
G1 X-3.58750
G0 Z4.00000
G0 X3.58750
G1 Z1.00000
G1 X52.41250
G1 Y44.86538
G1 X3.58750
G0 Z4.00000
G0 X-3.58750
G1 Z1.00000
G1 X-52.41250
G1 Y45.50000
G1 X-3.58750
G0 Z4.00000
G0 X3.58750
G1 Z1.00000
G1 X52.41250
G1 Y46.13462
G1 X3.58750
G0 Z4.00000
G0 X-3.58750
G1 Z1.00000
G1 X-52.41250
G1 Y46.76923
G1 X-3.58750
G0 Z4.00000
G0 X3.58750
G1 Z1.00000
G1 X52.41250
G1 Y47.40385
G1 X3.58750
G0 Z4.00000
G0 X-3.58750
G1 Z1.00000
G1 X-52.41250
G1 Y48.03846
G1 X-3.58750
G0 Z4.00000
G0 X3.58750
G1 Z1.00000
G1 X52.41250
G1 Y48.67308
G1 X3.58750
G0 Z4.00000
G0 X-3.58750
G1 Z1.00000
G1 X-52.41250
G1 Y49.30769
G1 X-3.58750
G0 Z4.00000
G0 X3.58750
G1 Z1.00000
G1 X52.41250
G1 Y49.94231
G1 X3.58750
G0 Z4.00000
G0 X-3.58750
G1 Z1.00000
G1 X-52.41250
G1 Y50.57692
G1 X-3.58750
G0 Z4.00000
G0 X3.58750
G1 Z1.00000
G1 X52.41250
G1 Y51.21154
G1 X3.58750
G0 Z4.00000
G0 X-3.58750
G1 Z1.00000
G1 X-52.41250
G1 Y51.84615
G1 X-3.58750
G0 Z4.00000
G0 X3.58750
G1 Z1.00000
G1 X52.41250
G1 Y52.48077
G1 X3.58750
G0 Z4.00000
G0 X-3.58750
G1 Z1.00000
G1 X-52.41250
G1 Y53.11538
G1 X-3.58750
G0 Z4.00000
G0 X3.58750
G1 Z1.00000
G1 X52.41250
G1 Y53.75000
G1 X3.58750
G0 Z4.00000
G0 X-3.58750
G1 Z1.00000
G1 X-52.41250
G1 Y54.38462
G1 X-3.58750
G0 Z4.00000
G0 X3.58750
G1 Z1.00000
G1 X52.41250
G1 Y55.01923
G1 X3.58750
G0 Z4.00000
G0 X-3.58750
G1 Z1.00000
G1 X-52.41250
G1 Y55.65385
G1 X-3.58750
G0 Z4.00000
G0 X3.58750
G1 Z1.00000
G1 X52.41250
G1 Y56.28846
G1 X3.58750
G0 Z4.00000
G0 X-3.58750
G1 Z1.00000
G1 X-52.41250
G0 Z4.00000
G0 X-58.00000 Y62.00000
G1 Z1.00000
G1 X-57.89968
G0 Z4.00000
G0 X57.89968
G1 Z1.00000
G1 X58.00000
G1 Z-2.00000
G1 X57.89968
G0 Z4.00000
G0 X-52.09334 Y53.75000
G1 Z-2.00000
G1 X-51.99506
G0 Z4.00000
G0 X-4.00494
G1 Z-2.00000
G1 X-3.58750
G0 Z4.00000
G0 X-0.32718
G1 Z-2.00000
G1 X0.15465
G0 Z4.00000
G0 X3.90666
G1 Z-2.00000
G1 X4.00494
G0 Z4.00000
G0 X51.99506
G1 Z-2.00000
G1 X52.41250
G0 Z4.00000
G0 X48.41250 Y51.84615
G1 Z-2.00000
G1 X7.58750
G0 Z4.00000
G0 X-7.58750
G1 Z-2.00000
G1 X-48.41250
G1 Y51.21154
G1 X-7.58750
G0 Z4.00000
G0 X7.58750
G1 Z-2.00000
G1 X48.41250
G1 Y50.57692
G1 X7.58750
G0 Z4.00000
G0 X-7.58750
G1 Z-2.00000
G1 X-48.41250
G1 Y49.94231
G1 X-7.58750
G0 Z4.00000
G0 X7.58750
G1 Z-2.00000
G1 X48.41250
G1 Y49.30769
G1 X7.58750
G0 Z4.00000
G0 X-7.58750
G1 Z-2.00000
G1 X-48.41250
G1 Y48.67308
G1 X-7.58750
G0 Z4.00000
G0 X7.58750
G1 Z-2.00000
G1 X48.41250
G1 Y48.03846
G1 X7.58750
G0 Z4.00000
G0 X-7.58750
G1 Z-2.00000
G1 X-48.41250
G1 Y47.40385
G1 X-7.58750
G0 Z4.00000
G0 X7.58750
G1 Z-2.00000
G1 X48.41250
G1 Y46.76923
G1 X7.58750
G0 Z4.00000
G0 X-7.58750
G1 Z-2.00000
G1 X-48.41250
G1 Y46.13462
G1 X-7.58750
G0 Z4.00000
G0 X7.58750
G1 Z-2.00000
G1 X48.41250
G1 Y45.50000
G1 X7.58750
G0 Z4.00000
G0 X-7.58750
G1 Z-2.00000
G1 X-48.41250
G1 Y44.86538
G1 X-7.58750
G0 Z4.00000
G0 X7.58750
G1 Z-2.00000
G1 X48.41250
G0 Z4.00000
G0 X-48.41250 Y43.59615
G1 Z-2.00000
G1 X-7.58750
G0 Z4.00000
G0 X7.58750
G1 Z-2.00000
G1 X48.41250
G1 Y42.96154
G1 X7.58750
G0 Z4.00000
G0 X-7.58750
G1 Z-2.00000
G1 X-48.41250
G1 Y42.32692
G1 X-7.58750
G0 Z4.00000
G0 X7.58750
G1 Z-2.00000
G1 X48.41250
G0 Z4.00000
G0 X-48.41250 Y41.05769
G1 Z-2.00000
G1 X-7.58750
G0 Z4.00000
G0 X7.58750
G1 Z-2.00000
G1 X48.41250
G1 Y40.42308
G1 X7.58750
G0 Z4.00000
G0 X-7.58750
G1 Z-2.00000
G1 X-48.41250
G1 Y39.78846
G1 X-7.58750
G0 Z4.00000
G0 X7.58750
G1 Z-2.00000
G1 X48.41250
G1 Y39.15385
G1 X7.58750
G0 Z4.00000
G0 X-7.58750
G1 Z-2.00000
G1 X-48.41250
G1 Y38.51923
G1 X-7.58750
G0 Z4.00000
G0 X7.58750
G1 Z-2.00000
G1 X48.41250
G1 Y37.88462
G1 X7.58750
G0 Z4.00000
G0 X-7.58750
G1 Z-2.00000
G1 X-48.41250
G1 Y37.25000
G1 X-7.58750
G0 Z4.00000
G0 X7.58750
G1 Z-2.00000
G1 X48.41250
G1 Y36.61538
G1 X7.58750
G0 Z4.00000
G0 X-7.58750
G1 Z-2.00000
G1 X-48.41250
G1 Y35.98077
G1 X-7.58750
G0 Z4.00000
G0 X7.58750
G1 Z-2.00000
G1 X48.41250
G1 Y35.34615
G1 X7.58750
G0 Z4.00000
G0 X-7.58750
G1 Z-2.00000
G1 X-48.41250
G1 Y34.71154
G1 X-7.58750
G0 Z4.00000
G0 X7.58750
G1 Z-2.00000
G1 X48.41250
G1 Y34.07692
G1 X7.58750
G0 Z4.00000
G0 X-7.58750
G1 Z-2.00000
G1 X-48.41250
G1 Y33.44231
G1 X-7.58750
G0 Z4.00000
G0 X7.58750
G1 Z-2.00000
G1 X48.41250
G1 Y32.80769
G1 X7.58750
G0 Z4.00000
G0 X-7.58750
G1 Z-2.00000
G1 X-48.41250
G1 Y32.17308
G1 X-7.58750
G0 Z4.00000
G0 X7.58750
G1 Z-2.00000
G1 X48.41250
G1 Y31.53846
G1 X7.58750
G0 Z4.00000
G0 X-7.58750
G1 Z-2.00000
G1 X-48.41250
G1 Y30.90385
G1 X-7.58750
G0 Z4.00000
G0 X7.58750
G1 Z-2.00000
G1 X48.41250
G1 Y30.26923
G1 X7.58750
G0 Z4.00000
G0 X-7.58750
G1 Z-2.00000
G1 X-48.41250
G1 Y29.63462
G1 X-7.58750
G0 Z4.00000
G0 X7.58750
G1 Z-2.00000
G1 X48.41250
G1 Y29.00000
G1 X7.58750
G0 Z4.00000
G0 X-7.58750
G1 Z-2.00000
G1 X-48.41250
G1 Y28.36538
G1 X-7.58750
G0 Z4.00000
G0 X7.58750
G1 Z-2.00000
G1 X48.41250
G1 Y27.73077
G1 X7.58750
G0 Z4.00000
G0 X-7.58750
G1 Z-2.00000
G1 X-48.41250
G1 Y27.09615
G1 X-7.58750
G0 Z4.00000
G0 X7.58750
G1 Z-2.00000
G1 X48.41250
G1 Y26.46154
G1 X7.58750
G0 Z4.00000
G0 X-7.58750
G1 Z-2.00000
G1 X-48.41250
G1 Y25.82692
G1 X-7.58750
G0 Z4.00000
G0 X7.58750
G1 Z-2.00000
G1 X48.41250
G1 Y25.19231
G1 X7.58750
G0 Z4.00000
G0 X-7.58750
G1 Z-2.00000
G1 X-48.41250
G1 Y24.55769
G1 X-7.58750
G0 Z4.00000
G0 X7.58750
G1 Z-2.00000
G1 X48.41250
G1 Y23.92308
G1 X7.58750
G0 Z4.00000
G0 X-7.58750
G1 Z-2.00000
G1 X-48.41250
G1 Y23.28846
G1 X-7.58750
G0 Z4.00000
G0 X7.58750
G1 Z-2.00000
G1 X48.41250
G1 Y22.65385
G1 X7.58750
G0 Z4.00000
G0 X-7.58750
G1 Z-2.00000
G1 X-48.41250
G1 Y22.01923
G1 X-7.58750
G0 Z4.00000
G0 X7.58750
G1 Z-2.00000
G1 X48.41250
G0 Z4.00000
G0 X-48.41250 Y20.75000
G1 Z-2.00000
G1 X-7.58750
G0 Z4.00000
G0 X7.58750
G1 Z-2.00000
G1 X48.41250
G1 Y20.11538
G1 X7.58750
G0 Z4.00000
G0 X-7.58750
G1 Z-2.00000
G1 X-48.41250
G1 Y19.48077
G1 X-7.58750
G0 Z4.00000
G0 X7.58750
G1 Z-2.00000
G1 X48.41250
G1 Y18.84615
G1 X7.58750
G0 Z4.00000
G0 X-7.58750
G1 Z-2.00000
G1 X-48.41250
G1 Y18.21154
G1 X-7.58750
G0 Z4.00000
G0 X7.58750
G1 Z-2.00000
G1 X48.41250
G0 Z4.00000
G0 X-48.41250 Y16.94231
G1 Z-2.00000
G1 X-7.58750
G0 Z4.00000
G0 X7.58750
G1 Z-2.00000
G1 X48.41250
G1 Y16.30769
G1 X7.58750
G0 Z4.00000
G0 X-7.58750
G1 Z-2.00000
G1 X-48.41250
G1 Y15.67308
G1 X-7.58750
G0 Z4.00000
G0 X7.58750
G1 Z-2.00000
G1 X48.41250
G1 Y15.03846
G1 X7.58750
G0 Z4.00000
G0 X-7.58750
G1 Z-2.00000
G1 X-48.41250
G1 Y14.40385
G1 X-7.58750
G0 Z4.00000
G0 X7.58750
G1 Z-2.00000
G1 X48.41250
G1 Y13.76923
G1 X7.58750
G0 Z4.00000
G0 X-7.58750
G1 Z-2.00000
G1 X-48.41250
G1 Y13.13462
G1 X-7.58750
G0 Z4.00000
G0 X7.58750
G1 Z-2.00000
G1 X48.41250
G1 Y12.50000
G1 X7.58750
G0 Z4.00000
G0 X-7.58750
G1 Z-2.00000
G1 X-48.41250
G1 Y11.86538
G1 X-7.58750
G0 Z4.00000
G0 X7.58750
G1 Z-2.00000
G1 X48.41250
G1 Y11.23077
G1 X7.58750
G0 Z4.00000
G0 X-7.58750
G1 Z-2.00000
G1 X-48.41250
G1 Y10.59615
G1 X-7.58750
G0 Z4.00000
G0 X7.58750
G1 Z-2.00000
G1 X48.41250
G0 Z4.00000
G0 X-48.41250 Y9.32692
G1 Z-2.00000
G1 X-7.58750
G0 Z4.00000
G0 X7.58750
G1 Z-2.00000
G1 X48.41250
G1 Y8.69231
G1 X7.58750
G0 Z4.00000
G0 X-7.58750
G1 Z-2.00000
G1 X-48.41250
G1 Y8.05769
G1 X-7.58750
G0 Z4.00000
G0 X7.58750
G1 Z-2.00000
G1 X48.41250
G0 Z4.00000
G0 X-48.41250 Y6.78846
G1 Z-2.00000
G1 X-7.58750
G0 Z4.00000
G0 X7.58750
G1 Z-2.00000
G1 X48.41250
G0 Z4.00000
G0 X58.00000 Y-4.00000
G1 Z-2.00000
G1 X57.89968
G0 Z4.00000
G0 X-57.89968 Y62.00000
G1 Z-2.00000
G1 X-58.00000
G0 Z4.00000
G0 X-57.89968 Y-4.00000
G1 Z-2.00000
G1 X-58.00000
G0 Z4.00000
M5 (stop spindle)
G04 P3 (wait for 3 seconds)
G0 Z4.00000
M2 (end program)

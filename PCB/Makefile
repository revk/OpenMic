all: png stl

stl:    Recorder/RecorderB.stl Recorder/RecorderBatB.stl Recorder/RecorderNoTagB.stl Recorder/RecorderBatNotTagB.stl Recorder/RecorderT.stl Recorder/RecorderBatT.stl Recorder/RecorderNoTagT.stl Recorder/RecorderBatNotTagT.stl

png:	$(patsubst %.kicad_pcb,%.png,$(wildcard */*.kicad_pcb))

PCBCase/case: PCBCase/case.c
	make -C PCBCase

PCBCase/clean: PCBCase/clean.c
	make -C PCBCase

%.stl: %.scad
	echo "Making $@"
	/Applications/OpenSCAD.app/Contents/MacOS/OpenSCAD $< -o $@
	echo "Made $@"

Recorder/RecorderNoTagB.scad: Recorder/Recorder.kicad_pcb PCBCase/case Makefile
	PCBCase/case -o $@ $< --edge=2 --bottom=3 --top=7 --pcb=2 --case=3 --ignore=BT1 --two-file --date-x=8

Recorder/RecorderB.scad: Recorder/Recorder.kicad_pcb PCBCase/case Makefile
	PCBCase/case -o $@ $< --edge=2 --bottom=3 --top=7 --pcb=2 --ignore=BT1 --two-file

Recorder/RecorderBatB.scad: Recorder/Recorder.kicad_pcb PCBCase/case Makefile
	PCBCase/case -o $@ $< --edge=2 --bottom=6 --top=7 --pcb=2 --wall=6 --two-file

Recorder/RecorderBatNotTagB.scad: Recorder/Recorder.kicad_pcb PCBCase/case Makefile
	PCBCase/case -o $@ $< --edge=2 --bottom=6 --top=7 --pcb=2 --wall=6 --case=3 --two-file --date-x=8

%.png:	%.kicad_pcb PCBCase/clean PCBCase/render
	PCBCase/render $<

// Generated case design for Recorder/Recorder.kicad_pcb
// By https://github.com/revk/PCBCase
// Generated 2025-08-04 10:38:59
// title:	PCB-AUDIO
// rev:	1
// company:	Adrian Kennard, Andrews & Arnold Ltd
//

// Globals
margin=0.200000;
lip=2.000000;
casebottom=3.000000;
casetop=4.000000;
casewall=3.000000;
fit=0.000000;
edge=2.000000;
pcbthickness=1.200000;
nohull=false;
hullcap=1.000000;
hulledge=1.000000;
useredge=false;
spacing=68.000000;
pcbwidth=52.000000;
pcblength=25.000000;
originx=99.000000;
originy=99.500000;

module outline(h=pcbthickness,r=0){linear_extrude(height=h)offset(r=r)polygon(points=[[25.000000,-12.500000],[-20.000000,-12.500000],[-20.671787,-12.462273],[-21.335126,-12.349568],[-21.981675,-12.163300],[-22.603303,-11.905814],[-23.192193,-11.580346],[-23.740939,-11.190989],[-24.242641,-10.742641],[-24.690989,-10.240939],[-25.080346,-9.692193],[-25.405814,-9.103303],[-25.663300,-8.481675],[-25.849568,-7.835126],[-25.962273,-7.171787],[-26.000000,-6.500000],[-26.000000,6.500000],[-25.962273,7.171787],[-25.849568,7.835126],[-25.663300,8.481675],[-25.405814,9.103303],[-25.080346,9.692193],[-24.690989,10.240939],[-24.242641,10.742641],[-23.740939,11.190989],[-23.192193,11.580346],[-22.603303,11.905814],[-21.981675,12.163300],[-21.335126,12.349568],[-20.671787,12.462273],[-20.000000,12.500000],[-19.808658,12.461939],[-19.646447,12.353553],[-19.538061,12.191342],[-19.500000,12.000000],[-19.500000,9.000000],[-19.538061,8.808658],[-19.646447,8.646447],[-19.808658,8.538061],[-20.000000,8.500000],[-20.517638,8.431852],[-21.000000,8.232051],[-21.414214,7.914214],[-21.732051,7.500000],[-21.931852,7.017638],[-22.000000,6.500000],[-22.000000,-6.500000],[-21.931852,-7.017638],[-21.732051,-7.500000],[-21.414214,-7.914214],[-21.000000,-8.232051],[-20.517638,-8.431852],[-20.000000,-8.500000],[-16.000000,-8.500000],[-15.482362,-8.431852],[-15.000000,-8.232051],[-14.585786,-7.914214],[-14.267949,-7.500000],[-14.068148,-7.017638],[-14.000000,-6.500000],[-14.000000,11.500000],[-13.965926,11.758819],[-13.866026,12.000000],[-13.707107,12.207107],[-13.500000,12.366026],[-13.258819,12.465926],[-13.000000,12.500000],[25.000000,12.500000],[25.258819,12.465926],[25.500000,12.366026],[25.707107,12.207107],[25.866026,12.000000],[25.965926,11.758819],[26.000000,11.500000],[26.000000,-11.500000],[25.965926,-11.758819],[25.866026,-12.000000],[25.707107,-12.207107],[25.500000,-12.366026],[25.258819,-12.465926]],paths=[[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79]]);}

module pcb(h=pcbthickness,r=0){linear_extrude(height=h)offset(r=r)polygon(points=[[25.000000,-12.500000],[-20.000000,-12.500000],[-20.671787,-12.462273],[-21.335126,-12.349568],[-21.981675,-12.163300],[-22.603303,-11.905814],[-23.192193,-11.580346],[-23.740939,-11.190989],[-24.242641,-10.742641],[-24.690989,-10.240939],[-25.080346,-9.692193],[-25.405814,-9.103303],[-25.663300,-8.481675],[-25.849568,-7.835126],[-25.962273,-7.171787],[-26.000000,-6.500000],[-26.000000,6.500000],[-25.962273,7.171787],[-25.849568,7.835126],[-25.663300,8.481675],[-25.405814,9.103303],[-25.080346,9.692193],[-24.690989,10.240939],[-24.242641,10.742641],[-23.740939,11.190989],[-23.192193,11.580346],[-22.603303,11.905814],[-21.981675,12.163300],[-21.335126,12.349568],[-20.671787,12.462273],[-20.000000,12.500000],[-19.808658,12.461939],[-19.646447,12.353553],[-19.538061,12.191342],[-19.500000,12.000000],[-19.500000,9.000000],[-19.538061,8.808658],[-19.646447,8.646447],[-19.808658,8.538061],[-20.000000,8.500000],[-20.517638,8.431852],[-21.000000,8.232051],[-21.414214,7.914214],[-21.732051,7.500000],[-21.931852,7.017638],[-22.000000,6.500000],[-22.000000,-6.500000],[-21.931852,-7.017638],[-21.732051,-7.500000],[-21.414214,-7.914214],[-21.000000,-8.232051],[-20.517638,-8.431852],[-20.000000,-8.500000],[-16.000000,-8.500000],[-15.482362,-8.431852],[-15.000000,-8.232051],[-14.585786,-7.914214],[-14.267949,-7.500000],[-14.068148,-7.017638],[-14.000000,-6.500000],[-14.000000,11.500000],[-13.965926,11.758819],[-13.866026,12.000000],[-13.707107,12.207107],[-13.500000,12.366026],[-13.258819,12.465926],[-13.000000,12.500000],[25.000000,12.500000],[25.258819,12.465926],[25.500000,12.366026],[25.707107,12.207107],[25.866026,12.000000],[25.965926,11.758819],[26.000000,11.500000],[26.000000,-11.500000],[25.965926,-11.758819],[25.866026,-12.000000],[25.707107,-12.207107],[25.500000,-12.366026],[25.258819,-12.465926]],paths=[[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79]]);}
module part_D10(part=true,hole=false,block=false)
{
translate([-3.000000,-11.000000,1.200000])rotate([0,0,45.000000])m0(part,hole,block,casetop); // D10 (back)
};
module part_R10(part=true,hole=false,block=false)
{
// Missing model R10.1 C_0201_0603Metric
};
module part_D6(part=true,hole=false,block=false)
{
translate([1.000000,-11.000000,1.200000])rotate([0,0,45.000000])m0(part,hole,block,casetop); // D10 (back)
};
module part_Q1(part=true,hole=false,block=false)
{
translate([15.562500,4.687500,1.200000])rotate([0,0,180.000000])m1(part,hole,block,casetop); // Q1 (back)
};
module part_R11(part=true,hole=false,block=false)
{
// Missing model R11.1 C_0201_0603Metric
};
module part_U3(part=true,hole=false,block=false)
{
translate([12.062500,4.687500,1.200000])m2(part,hole,block,casetop); // U3 (back)
};
module part_R12(part=true,hole=false,block=false)
{
// Missing model R12.1 C_0201_0603Metric
};
module part_R13(part=true,hole=false,block=false)
{
// Missing model R13.1 C_0201_0603Metric
};
module part_D8(part=true,hole=false,block=false)
{
translate([-1.000000,-11.000000,1.200000])rotate([0,0,45.000000])m0(part,hole,block,casetop); // D10 (back)
};
module part_C15(part=true,hole=false,block=false)
{
// Missing model C15.1 C_0201_0603Metric
};
module part_D5(part=true,hole=false,block=false)
{
translate([3.000000,-11.000000,1.200000])rotate([0,0,45.000000])m0(part,hole,block,casetop); // D10 (back)
};
module part_D7(part=true,hole=false,block=false)
{
translate([-8.500000,-7.500000,1.200000])rotate([0,0,90.000000])m0(part,hole,block,casetop); // D10 (back)
};
module part_V1(part=true,hole=false,block=false)
{
};
module part_R16(part=true,hole=false,block=false)
{
// Missing model R16.1 C_0201_0603Metric
};
module part_R3(part=true,hole=false,block=false)
{
// Missing model R3.1 C_0201_0603Metric
};
module part_C13(part=true,hole=false,block=false)
{
// Missing model C13.1 C_0201_0603Metric
};
module part_R2(part=true,hole=false,block=false)
{
// Missing model R2.1 C_0201_0603Metric
};
module part_C1(part=true,hole=false,block=false)
{
translate([24.000000,-1.000000,1.200000])m3(part,hole,block,casetop); // RevK:C_0603 C_0603_1608Metric (back)
};
module part_C11(part=true,hole=false,block=false)
{
// Missing model C11.1 C_0201_0603Metric
};
module part_SW1(part=true,hole=false,block=false)
{
// Missing model SW1.1 DPDT
};
module part_U4(part=true,hole=false,block=false)
{
translate([14.050000,9.000000,1.200000])rotate([0,0,90.000000])m2(part,hole,block,casetop); // U3 (back)
};
module part_U2(part=true,hole=false,block=false)
{
// Missing model U2.1 WCSP-4-0.7x0.78
};
module part_R4(part=true,hole=false,block=false)
{
// Missing model R4.1 C_0201_0603Metric
};
module part_D4(part=true,hole=false,block=false)
{
translate([5.000000,-11.000000,1.200000])rotate([0,0,45.000000])m0(part,hole,block,casetop); // D10 (back)
};
module part_J5(part=true,hole=false,block=false)
{
translate([20.500000,7.000000,1.200000])rotate([0,0,90.000000])translate([0.000000,-1.900000,0.000000])rotate([90.000000,0.000000,0.000000])m4(part,hole,block,casetop); // RevK:USB-C-Socket-H CSP-USC16-TR (back)
};
module part_D9(part=true,hole=false,block=false)
{
translate([-8.500000,7.500000,1.200000])rotate([0,0,90.000000])m0(part,hole,block,casetop); // D10 (back)
};
module part_R1(part=true,hole=false,block=false)
{
// Missing model R1.1 C_0201_0603Metric
};
module part_D1(part=true,hole=false,block=false)
{
translate([19.200000,-0.500000,1.200000])rotate([0,0,-90.000000])m5(part,hole,block,casetop); // RevK:D_0402 DFN1006-2L (back)
};
module part_C12(part=true,hole=false,block=false)
{
// Missing model C12.1 C_0201_0603Metric
};
module part_C9(part=true,hole=false,block=false)
{
translate([14.562500,-4.500000,1.200000])m6(part,hole,block,casetop); // RevK:C_0805 C_0805_2012Metric (back)
};
module part_D3(part=true,hole=false,block=false)
{
translate([16.500000,8.500000,1.200000])rotate([0,0,90.000000])m7(part,hole,block,casetop); // D3 (back)
};
module part_D2(part=true,hole=false,block=false)
{
translate([21.100000,-1.000000,1.200000])m5(part,hole,block,casetop); // RevK:D_0402 DFN1006-2L (back)
};
module part_PCB1(part=true,hole=false,block=false)
{
};
module part_R7(part=true,hole=false,block=false)
{
// Missing model R7.1 C_0201_0603Metric
};
module part_C3(part=true,hole=false,block=false)
{
translate([24.000000,1.000000,1.200000])m3(part,hole,block,casetop); // RevK:C_0603 C_0603_1608Metric (back)
};
module part_R5(part=true,hole=false,block=false)
{
// Missing model R5.1 C_0201_0603Metric
};
module part_R15(part=true,hole=false,block=false)
{
// Missing model R15.1 C_0201_0603Metric
};
module part_U1(part=true,hole=false,block=false)
{
translate([1.000000,-0.500000,1.200000])m8(part,hole,block,casetop); // U1 (back)
};
module part_C2(part=true,hole=false,block=false)
{
// Missing model C2.1 C_0201_0603Metric
};
module part_C4(part=true,hole=false,block=false)
{
// Missing model C4.1 C_0201_0603Metric
};
module part_R6(part=true,hole=false,block=false)
{
// Missing model R6.1 C_0201_0603Metric
};
module part_C10(part=true,hole=false,block=false)
{
// Missing model C10.1 C_0201_0603Metric
};
module part_J6(part=true,hole=false,block=false)
{
translate([21.200000,-7.500000,1.200000])rotate([0,0,180.000000])translate([0.000000,1.200000,0.000000])rotate([-0.000000,-0.000000,180.000000])m9(part,hole,block,casetop); // RevK:1.25T-2PWT (Molex 532610271) Molex_PicoBlade_53261-0271_1x02-1MP_P1.25mm_Horizontal (back)
};
module part_C6(part=true,hole=false,block=false)
{
translate([11.000000,-5.500000,1.200000])rotate([0,0,90.000000])m10(part,hole,block,casetop); // C6 (back)
};
module part_R9(part=true,hole=false,block=false)
{
// Missing model R9.1 C_0201_0603Metric
};
module part_R14(part=true,hole=false,block=false)
{
// Missing model R14.1 C_0201_0603Metric
};
module part_C5(part=true,hole=false,block=false)
{
translate([11.000000,7.500000,1.200000])rotate([0,0,-90.000000])m3(part,hole,block,casetop); // RevK:C_0603 C_0603_1608Metric (back)
};
module part_R8(part=true,hole=false,block=false)
{
// Missing model R8.1 C_0201_0603Metric
};
module part_C14(part=true,hole=false,block=false)
{
// Missing model C14.1 C_0201_0603Metric
};
module part_C7(part=true,hole=false,block=false)
{
translate([17.000000,11.500000,1.200000])m11(part,hole,block,casetop); // RevK:C_0402 C_0402_1005Metric (back)
};
// Parts to go on PCB (top)
module parts_top(part=false,hole=false,block=false){
part_D10(part,hole,block);
part_R10(part,hole,block);
part_D6(part,hole,block);
part_Q1(part,hole,block);
part_R11(part,hole,block);
part_U3(part,hole,block);
part_R12(part,hole,block);
part_R13(part,hole,block);
part_D8(part,hole,block);
part_C15(part,hole,block);
part_D5(part,hole,block);
part_D7(part,hole,block);
part_V1(part,hole,block);
part_R16(part,hole,block);
part_R3(part,hole,block);
part_C13(part,hole,block);
part_R2(part,hole,block);
part_C1(part,hole,block);
part_C11(part,hole,block);
part_SW1(part,hole,block);
part_U4(part,hole,block);
part_U2(part,hole,block);
part_R4(part,hole,block);
part_D4(part,hole,block);
part_J5(part,hole,block);
part_D9(part,hole,block);
part_R1(part,hole,block);
part_D1(part,hole,block);
part_C12(part,hole,block);
part_C9(part,hole,block);
part_D3(part,hole,block);
part_D2(part,hole,block);
part_PCB1(part,hole,block);
part_R7(part,hole,block);
part_C3(part,hole,block);
part_R5(part,hole,block);
part_R15(part,hole,block);
part_U1(part,hole,block);
part_C2(part,hole,block);
part_C4(part,hole,block);
part_R6(part,hole,block);
part_C10(part,hole,block);
part_J6(part,hole,block);
part_C6(part,hole,block);
part_R9(part,hole,block);
part_R14(part,hole,block);
part_C5(part,hole,block);
part_R8(part,hole,block);
part_C14(part,hole,block);
part_C7(part,hole,block);
}

parts_top=13;
module part_J4(part=true,hole=false,block=false)
{
translate([-4.350000,-1.050000,0.000000])rotate([0,0,90.000000])rotate([180,0,0])m12(part,hole,block,casebottom); // J4
};
module part_V2(part=true,hole=false,block=false)
{
};
module part_J3(part=true,hole=false,block=false)
{
};
module part_U5(part=true,hole=false,block=false)
{
translate([-11.500000,10.500000,0.000000])rotate([0,0,90.000000])rotate([180,0,0])m13(part,hole,block,casebottom); // U5
};
module part_J1(part=true,hole=false,block=false)
{
};
module part_U6(part=true,hole=false,block=false)
{
translate([-11.500000,-10.500000,0.000000])rotate([0,0,-90.000000])rotate([180,0,0])m13(part,hole,block,casebottom); // U5
};
// Parts to go on PCB (bottom)
module parts_bottom(part=false,hole=false,block=false){
part_J4(part,hole,block);
part_V2(part,hole,block);
part_J3(part,hole,block);
part_U5(part,hole,block);
part_J1(part,hole,block);
part_U6(part,hole,block);
}

parts_bottom=3;
module b(cx,cy,z,w,l,h){translate([cx-w/2,cy-l/2,z])cube([w,l,h]);}
module m0(part=false,hole=false,block=false,height)
{ // D10
// 1x1mm LED
if(part)
{
        b(0,0,0,1.2,1.2,.8);
}
if(hole)
{
        hull()
        {
                b(0,0,.8,1.2,1.2,1);
                translate([0,0,height])cylinder(d=2,h=1,$fn=16);
        }
}
if(block)
{
        hull()
        {
                b(0,0,0,2.4,2.4,1);
                translate([0,0,height])cylinder(d=4,h=1,$fn=16);
        }
}
}

module m1(part=false,hole=false,block=false,height)
{ // Q1
// SOT-23
if(part)
{
	b(0,0,0,1.4,3.0,1.1); // Body
	b(-0.9375,-0.95,0,1.475,0.6,0.5); // Pad
	b(-0.9375,0.95,0,1.475,0.6,0.5); // Pad
	b(0.9375,0,0,1.475,0.6,0.5); // Pad
}
}

module m2(part=false,hole=false,block=false,height)
{ // U3
// SOT-23-5
if(part)
{
	b(0,0,0,1.726,3.026,1.2); // Part
	b(0,0,0,3.6,2.5,0.5); // Pins (well, one extra)
}
}

module m3(part=false,hole=false,block=false,height)
{ // RevK:C_0603 C_0603_1608Metric
// 0603 Capacitor
if(part)
{
	b(0,0,0,1.6,0.8,1); // Chip
	b(0,0,0,1.6,0.95,0.2); // Pad size
}
}

module m4(part=false,hole=false,block=false,height)
{ // RevK:USB-C-Socket-H CSP-USC16-TR
// USB connector
rotate([-90,0,0])translate([-4.47,-3.84,0])
{
	if(part)
	{
		b(4.47,7,0,7,2,0.2);	// Pads
		translate([1.63,-0.2,1.63])
		rotate([-90,0,0])
		hull()
		{
			cylinder(d=3.26,h=7.55,$fn=24);
			translate([5.68,0,0])
			cylinder(d=3.26,h=7.55,$fn=24);
		}
		translate([0,6.2501,0])cube([8.94,1.1,1.6301]);
		translate([0,1.7,0])cube([8.94,1.6,1.6301]);
	}
	if(hole)
		translate([1.63,-20,1.63])
		rotate([-90,0,0])
	{
		// Plug
		hull()
		{
			cylinder(d=2.5,h=21,$fn=24);
			translate([5.68,0,0])
			cylinder(d=2.5,h=21,$fn=24);
		}
		hull()
		{
			cylinder(d=7,h=21,$fn=24);
			translate([5.68,0,0])
			cylinder(d=7,h=21,$fn=24);
		}
		translate([2.84,0,-100])
			cylinder(d=5,h=100,$fn=24);
	}
}
}

module m5(part=false,hole=false,block=false,height)
{ // RevK:D_0402 DFN1006-2L
// DFN1006-2L
if(part)
{
	b(0,0,0,1.0,0.6,0.45); // Chip
}
}

module m6(part=false,hole=false,block=false,height)
{ // RevK:C_0805 C_0805_2012Metric
// 0805 Capacitor
if(part)
{
	b(0,0,0,2,1.2,1); // Chip
	b(0,0,0,2,1.45,0.2); // Pad size
}
}

module m7(part=false,hole=false,block=false,height)
{ // D3
// SOD-123 Diode
if(part)
{
	b(0,0,0,2.85,1.8,1.35); // part
	b(0,0,0,4.2,1.2,0.7); // pads
}
}

module m8(part=false,hole=false,block=false,height)
{ // U1
// ESP32-S3-MINI-1
translate([-15.4/2,-15.45/2,0])
{
	if(part)
	{
		cube([15.4,20.5,0.8]);
		translate([0.7,0.5,0])cube([14,13.55,2.4]);
	}
	if(hole)
	{
		cube([15.4,20.5,0.8]);
	}
}
}

module m9(part=false,hole=false,block=false,height)
{ // RevK:1.25T-2PWT (Molex 532610271) Molex_PicoBlade_53261-0271_1x02-1MP_P1.25mm_Horizontal
if(part)
{
	b(0,-0.5,0,7,2.8,2);	// Tags
	b(0,-1.1,0,4,5.5,3.5);	// Socket
	b(0,-0.2,0,2,6,1);	// Lead
}
if(hole)
{
	translate([0,-4,-pcbthickness-2])cylinder(d=2,h=pcbthickness+2+3);
}
}

module m10(part=false,hole=false,block=false,height)
{ // C6
if(part)
{
	b(0,0,0,3.5,2.8,1.9);
}
}

module m11(part=false,hole=false,block=false,height)
{ // RevK:C_0402 C_0402_1005Metric
// 0402 Capacitor
if(part)
{
	b(0,0,0,1.0,0.5,1); // Chip
	b(0,0,0,1.5,0.65,0.2); // Pad size
}
}

module m12(part=false,hole=false,block=false,height)
{ // J4
if(part)
{
	b(0,-2.45,0,14.85,14.5,2); // Main case
	b(-7.75,4.3,0,1.2,1.5,0.2); // Tab
	b(-7.75,-5.3,0,1.2,2.2,0.2); // Tab
	b(7.75,-5.3,0,1.2,2.2,0.2); // Tab
	for(i=[0:8])b(2.25-i*1.1,5.3,0,0.7,1.6,0.4); // Pins
	b(-0.95,-4.7,0.75,10,15,1);	// Card
}
if(hole)
{
	b(-0.95,-4.7-5,0.75,10,25,1);	// Card
}
}

module m13(part=false,hole=false,block=false,height)
{ // U5
if(part)
{
	b(0,0,0,3.5,2.65,0.23);
	b(0,0,0,3.2,2.35,0.98);
}
if(hole)
{
	translate([0.71,0,-pcbthickness-0.01])
		hull()
		{
			cylinder(d=1,h=pcbthickness+0.02);
			translate([0.75+casewall+1,0,0])cylinder(d=1,h=pcbthickness+0.02);
		}
}
}

// Generate PCB casework

height=casebottom+pcbthickness+casetop;
$fn=48;

module pyramid()
{ // A pyramid
 polyhedron(points=[[0,0,0],[-height,-height,height],[-height,height,height],[height,height,height],[height,-height,height]],faces=[[0,1,2],[0,2,3],[0,3,4],[0,4,1],[4,3,2,1]]);
}


module pcb_hulled(h=pcbthickness,r=0)
{ // PCB shape for case
	if(useredge)outline(h,r);
	else hull()outline(h,r);
}

module solid_case(d=0)
{ // The case wall
	hull()
        {
                translate([0,0,-casebottom])pcb_hulled(height,casewall-edge);
                translate([0,0,edge-casebottom])pcb_hulled(height-edge*2,casewall);
        }
}

module preview()
{
	pcb();
	color("#0f0")parts_top(part=true);
	color("#0f0")parts_bottom(part=true);
	color("#f00")parts_top(hole=true);
	color("#f00")parts_bottom(hole=true);
	color("#00f8")parts_top(block=true);
	color("#00f8")parts_bottom(block=true);
}

module top_half(step=false)
{
	difference()
	{
		translate([-casebottom-100,-casewall-100,pcbthickness-lip/2+0.01]) cube([pcbwidth+casewall*2+200,pcblength+casewall*2+200,height]);
		if(step)translate([0,0,pcbthickness-lip/2-0.01])pcb_hulled(lip,casewall/2+fit);
	}
}

module bottom_half(step=false)
{
	translate([-casebottom-100,-casewall-100,pcbthickness+lip/2-height-0.01]) cube([pcbwidth+casewall*2+200,pcblength+casewall*2+200,height]);
	if(step)translate([0,0,pcbthickness-lip/2])pcb_hulled(lip,casewall/2-fit);
}

module case_wall()
{
	difference()
	{
		solid_case();
		translate([0,0,-height])pcb_hulled(height*2);
	}
}

module top_side_hole()
{
	difference()
	{
		intersection()
		{
			parts_top(hole=true);
			case_wall();
		}
		translate([0,0,-casebottom])pcb_hulled(height,casewall-edge);
	}
}

module bottom_side_hole()
{
	difference()
	{
		intersection()
		{
			parts_bottom(hole=true);
			case_wall();
		}
		translate([0,0,edge-casebottom])pcb_hulled(height-edge*2,casewall);
	}
}

module parts_space()
{
	minkowski()
	{
		union()
		{
			parts_top(part=true,hole=true);
			parts_bottom(part=true,hole=true);
		}
		sphere(r=margin,$fn=6);
	}
}

module top_cut()
{
	difference()
	{
		top_half(true);
		if(parts_top)difference()
		{
			minkowski()
			{ // Penetrating side holes
				top_side_hole();
				rotate([180,0,0])
				pyramid();
			}
			minkowski()
			{
				top_side_hole();
				rotate([0,0,45])cylinder(r=margin,h=height,$fn=4);
			}
		}
	}
	if(parts_bottom)difference()
	{
		minkowski()
		{ // Penetrating side holes
			bottom_side_hole();
			pyramid();
		}
			minkowski()
			{
				bottom_side_hole();
				rotate([0,0,45])translate([0,0,-height])cylinder(r=margin,h=height,$fn=4);
			}
	}
}

module bottom_cut()
{
	difference()
	{
		 translate([-casebottom-50,-casewall-50,-height]) cube([pcbwidth+casewall*2+100,pcblength+casewall*2+100,height*2]);
		 top_cut();
	}
}

module top_body()
{
	difference()
	{
		intersection()
		{
			solid_case();
			pcb_hulled(height);
			top_half();
		}
		if(parts_top)minkowski()
		{
			if(nohull)parts_top(part=true);
			else hull()parts_top(part=true);
			translate([0,0,margin-height])cylinder(r=margin,h=height,$fn=8);
		}
	}
	intersection()
	{
		solid_case();
		parts_top(block=true);
	}
}

module top_edge()
{
	intersection()
	{
		case_wall();
		top_cut();
	}
}

module top_pos()
{ // Position for plotting bottom
	translate([casewall,casewall,pcbthickness+casetop])rotate([180,0,0])children();
}

module pcb_pos()
{	// Position PCB relative to base 
		translate([0,0,pcbthickness-height])children();
}

module top()
{
	top_pos()difference()
	{
		union()
		{
			top_body();
			top_edge();
		}
		parts_space();
		pcb_pos()pcb(height,r=margin);
	}
}

module bottom_body()
{ // Position for plotting top
	difference()
	{
		intersection()
		{
			solid_case();
			translate([0,0,-height])pcb_hulled(height);
			bottom_half();
		}
		if(parts_bottom)minkowski()
		{
			if(nohull)parts_bottom(part=true);
			else hull()parts_bottom(part=true);
			translate([0,0,-margin])cylinder(r=margin,h=height,$fn=8);
		}
	}
	intersection()
	{
		solid_case();
		parts_bottom(block=true);
	}
}

module bottom_edge()
{
	intersection()
	{
		case_wall();
		bottom_cut();
	}
}

module bottom_pos()
{
	translate([casewall,casewall,casebottom])children();
}

module bottom()
{
	bottom_pos()difference()
	{
		union()
		{
        		bottom_body();
        		bottom_edge();
		}
		parts_space();
		pcb(height,r=margin);
	}
}
bottom(); translate([spacing,0,0])top();

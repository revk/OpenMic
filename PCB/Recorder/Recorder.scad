// Generated case design for Recorder/Recorder.kicad_pcb
// By https://github.com/revk/PCBCase
// Generated 2025-01-04 12:20:22
// title:	PCB-AUDIO
// rev:	1
// company:	Adrian Kennard, Andrews & Arnold Ltd
//

// Globals
margin=0.200000;
lip=2.000000;
casebottom=2.000000;
casetop=5.000000;
casewall=3.000000;
fit=0.000000;
edge=2.000000;
pcbthickness=1.200000;
nohull=false;
hullcap=1.000000;
hulledge=1.000000;
useredge=false;

module outline(h=pcbthickness,r=0){linear_extrude(height=h)offset(r=r)polygon(points=[[1.500000,0.000000],[36.500000,0.000000],[37.017638,0.068148],[37.500000,0.267949],[37.914214,0.585786],[38.232051,1.000000],[38.431852,1.482362],[38.500000,2.000000],[38.500000,18.000000],[38.431853,18.517638],[38.232051,19.000000],[37.914214,19.414213],[37.500000,19.732050],[37.017638,19.931851],[36.500000,20.000000],[1.500000,20.000000],[1.036475,19.926585],[0.618322,19.713525],[0.286475,19.381678],[0.073415,18.963525],[0.000000,18.500000],[0.000000,1.500000],[0.073415,1.036475],[0.286475,0.618322],[0.618322,0.286475],[1.036475,0.073415]],paths=[[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25]]);}

module pcb(h=pcbthickness,r=0){linear_extrude(height=h)offset(r=r)polygon(points=[[1.500000,0.000000],[36.500000,0.000000],[37.017638,0.068148],[37.500000,0.267949],[37.914214,0.585786],[38.232051,1.000000],[38.431852,1.482362],[38.500000,2.000000],[38.500000,18.000000],[38.431853,18.517638],[38.232051,19.000000],[37.914214,19.414213],[37.500000,19.732050],[37.017638,19.931851],[36.500000,20.000000],[1.500000,20.000000],[1.036475,19.926585],[0.618322,19.713525],[0.286475,19.381678],[0.073415,18.963525],[0.000000,18.500000],[0.000000,1.500000],[0.073415,1.036475],[0.286475,0.618322],[0.618322,0.286475],[1.036475,0.073415]],paths=[[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25]]);}
spacing=54.500000;
pcbwidth=38.500000;
pcblength=20.000000;
// Parts to go on PCB (top)
module parts_top(part=false,hole=false,block=false){
translate([12.950000,1.200000,1.200000])rotate([0,0,90.000000])m0(part,hole,block,casetop); // RevK:R_0402 R_0402_1005Metric (back)
translate([36.600000,18.200000,1.200000])rotate([0,0,45.000000])m1(part,hole,block,casetop); // D6 (back)
translate([12.100000,1.200000,1.200000])rotate([0,0,90.000000])m0(part,hole,block,casetop); // RevK:R_0402 R_0402_1005Metric (back)
translate([27.700000,13.800000,1.200000])m2(part,hole,block,casetop); // U3 (back)
translate([11.250000,1.200000,1.200000])rotate([0,0,90.000000])m0(part,hole,block,casetop); // RevK:R_0402 R_0402_1005Metric (back)
translate([10.400000,1.200000,1.200000])rotate([0,0,90.000000])m0(part,hole,block,casetop); // RevK:R_0402 R_0402_1005Metric (back)
translate([17.050000,12.000000,1.200000])m3(part,hole,block,casetop); // REF** (back)
translate([6.800000,6.000000,1.200000])rotate([0,0,90.000000])m1(part,hole,block,casetop); // D6 (back)
translate([14.650000,1.200000,1.200000])rotate([0,0,90.000000])m0(part,hole,block,casetop); // RevK:R_0402 R_0402_1005Metric (back)
// Missing model SW1.1 TS-1092S-B3D2-G
translate([24.236837,15.630000,1.200000])rotate([0,0,180.000000])m0(part,hole,block,casetop); // RevK:R_0402 R_0402_1005Metric (back)
translate([26.900000,6.500000,1.200000])rotate([0,0,90.000000])m4(part,hole,block,casetop); // C1 (back)
translate([29.700000,8.500000,1.200000])rotate([0,0,-90.000000])m5(part,hole,block,casetop); // RevK:C_0402 C_0402_1005Metric (back)
translate([27.300000,18.200000,1.200000])rotate([0,0,180.000000])m2(part,hole,block,casetop); // U3 (back)
translate([6.800000,14.000000,1.200000])m1(part,hole,block,casetop); // D6 (back)
translate([32.460000,11.800000,1.200000])rotate([0,0,90.000000])translate([0.000000,-2.400000,0.000000])rotate([90.000000,-0.000000,-0.000000])m6(part,hole,block,casetop); // RevK:USB-C-Socket-H CSP-USC16-TR (back)
translate([9.550000,1.200000,1.200000])rotate([0,0,90.000000])m0(part,hole,block,casetop); // RevK:R_0402 R_0402_1005Metric (back)
translate([28.950000,15.900000,1.200000])rotate([0,0,180.000000])m0(part,hole,block,casetop); // RevK:R_0402 R_0402_1005Metric (back)
translate([28.700000,2.600000,1.200000])rotate([0,0,180.000000])m1(part,hole,block,casetop); // D6 (back)
translate([24.125000,14.060000,1.200000])rotate([0,0,-90.000000])m5(part,hole,block,casetop); // RevK:C_0402 C_0402_1005Metric (back)
translate([32.700000,18.600000,1.200000])m7(part,hole,block,casetop); // D3 (back)
translate([26.000000,11.700000,1.200000])m8(part,hole,block,casetop); // D2 (back)
translate([29.400000,10.700000,1.200000])m0(part,hole,block,casetop); // RevK:R_0402 R_0402_1005Metric (back)
translate([25.400000,9.500000,1.200000])rotate([0,0,180.000000])m9(part,hole,block,casetop); // RevK:C_0603 C_0603_1608Metric (back)
translate([32.000000,6.300000,1.200000])m0(part,hole,block,casetop); // RevK:R_0402 R_0402_1005Metric (back)
translate([24.000000,11.100000,1.200000])rotate([0,0,-90.000000])m5(part,hole,block,casetop); // RevK:C_0402 C_0402_1005Metric (back)
translate([28.300000,1.200000,1.200000])m5(part,hole,block,casetop); // RevK:C_0402 C_0402_1005Metric (back)
translate([36.200000,6.300000,1.200000])m0(part,hole,block,casetop); // RevK:R_0402 R_0402_1005Metric (back)
translate([34.000000,16.900000,1.200000])rotate([0,0,180.000000])m5(part,hole,block,casetop); // RevK:C_0402 C_0402_1005Metric (back)
// Missing model J1.1 Molex_PicoBlade_53261-0271_1x02-1MP_P1.25mm_Horizontal
translate([27.800000,10.700000,1.200000])rotate([0,0,180.000000])m10(part,hole,block,casetop); // Q2 (back)
translate([24.550000,17.800000,1.200000])rotate([0,0,90.000000])m11(part,hole,block,casetop); // RevK:C_0805 C_0805_2012Metric (back)
translate([4.500000,14.000000,1.200000])rotate([0,0,-90.000000])m5(part,hole,block,casetop); // RevK:C_0402 C_0402_1005Metric (back)
translate([13.800000,1.200000,1.200000])rotate([0,0,90.000000])m0(part,hole,block,casetop); // RevK:R_0402 R_0402_1005Metric (back)
translate([4.500000,6.000000,1.200000])rotate([0,0,-90.000000])m5(part,hole,block,casetop); // RevK:C_0402 C_0402_1005Metric (back)
translate([29.100000,5.200000,1.200000])rotate([0,0,-90.000000])m0(part,hole,block,casetop); // RevK:R_0402 R_0402_1005Metric (back)
translate([15.500000,10.000000,1.200000])m12(part,hole,block,casetop); // U6 (back)
translate([25.200000,13.300000,1.200000])rotate([0,0,90.000000])m5(part,hole,block,casetop); // RevK:C_0402 C_0402_1005Metric (back)
}

parts_top=12;
// Parts to go on PCB (bottom)
module parts_bottom(part=false,hole=false,block=false){
translate([15.550000,9.250000,0.000000])rotate([0,0,180.000000])rotate([180,0,0])m13(part,hole,block,casebottom); // J4
translate([5.500000,15.500000,0.000000])rotate([0,0,180.000000])rotate([180,0,0])m5(part,hole,block,casebottom); // RevK:C_0402 C_0402_1005Metric
translate([3.000000,4.500000,0.000000])rotate([0,0,180.000000])rotate([180,0,0])m5(part,hole,block,casebottom); // RevK:C_0402 C_0402_1005Metric
// Missing model U2.1 Knowles_SPH0645LM4H-6_3.5x2.65mm (back)
// Missing model U1.1 Knowles_SPH0645LM4H-6_3.5x2.65mm (back)
}

parts_bottom=1;
module b(cx,cy,z,w,l,h){translate([cx-w/2,cy-l/2,z])cube([w,l,h]);}
module m0(part=false,hole=false,block=false,height)
{ // RevK:R_0402 R_0402_1005Metric
// 0402 Resistor
if(part)
{
	b(0,0,0,1.5,0.65,0.2); // Pad size
	b(0,0,0,1.0,0.5,0.5); // Chip
}
}

module m1(part=false,hole=false,block=false,height)
{ // D6
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
{ // REF**
// Nothing
}

module m4(part=false,hole=false,block=false,height)
{ // C1
if(part)
{
	b(0,0,0,3.5,2.8,1.9);
}
}

module m5(part=false,hole=false,block=false,height)
{ // RevK:C_0402 C_0402_1005Metric
// 0402 Capacitor
if(part)
{
	b(0,0,0,1.0,0.5,1); // Chip
	b(0,0,0,1.5,0.65,0.2); // Pad size
}
}

module m6(part=false,hole=false,block=false,height)
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
	{
		// Plug
		translate([1.63,-20,1.63])
		rotate([-90,0,0])
		hull()
		{
			cylinder(d=2.5,h=21,$fn=24);
			translate([5.68,0,0])
			cylinder(d=2.5,h=21,$fn=24);
		}
		translate([1.63,-22.5,1.63])
		rotate([-90,0,0])
		hull()
		{
			cylinder(d=7,h=21,$fn=24);
			translate([5.68,0,0])
			cylinder(d=7,h=21,$fn=24);
		}
	}
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
{ // D2
// DFN1006-2L
if(part)
{
	b(0,0,0,1.0,0.6,0.45); // Chip
}
}

module m9(part=false,hole=false,block=false,height)
{ // RevK:C_0603 C_0603_1608Metric
// 0603 Capacitor
if(part)
{
	b(0,0,0,1.6,0.8,1); // Chip
	b(0,0,0,1.6,0.95,0.2); // Pad size
}
}

module m10(part=false,hole=false,block=false,height)
{ // Q2
// SOT-23
if(part)
{
	b(0,0,0,1.4,3.0,1.1); // Body
	b(-0.9375,-0.95,0,1.475,0.6,0.5); // Pad
	b(-0.9375,0.95,0,1.475,0.6,0.5); // Pad
	b(0.9375,0,0,1.475,0.6,0.5); // Pad
}
}

module m11(part=false,hole=false,block=false,height)
{ // RevK:C_0805 C_0805_2012Metric
// 0805 Capacitor
if(part)
{
	b(0,0,0,2,1.2,1); // Chip
	b(0,0,0,2,1.45,0.2); // Pad size
}
}

module m12(part=false,hole=false,block=false,height)
{ // U6
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

module m13(part=false,hole=false,block=false,height)
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
	intersection()
	{
		parts_top(hole=true);
		case_wall();
	}
}

module bottom_side_hole()
{
	intersection()
	{
		parts_bottom(hole=true);
		case_wall();
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

module top()
{
	translate([casewall,casewall+pcblength,pcbthickness+casetop])rotate([180,0,0])difference()
	{
		union()
		{
			top_body();
			top_edge();
		}
		parts_space();
		translate([0,0,pcbthickness-height])pcb(height,r=margin);
	}
}

module bottom_body()
{
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

module bottom()
{
	translate([casewall,casewall,casebottom])difference()
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

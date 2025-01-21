// Generated case design for Recorder/Recorder.kicad_pcb
// By https://github.com/revk/PCBCase
// Generated 2025-01-21 11:23:21
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

module outline(h=pcbthickness,r=0){linear_extrude(height=h)offset(r=r)polygon(points=[[51.915957,0.000000],[16.915957,0.000000],[16.582176,0.037608],[16.265131,0.148547],[15.980722,0.327253],[15.743210,0.564765],[15.564504,0.849174],[15.453565,1.166219],[15.415957,1.500000],[15.415957,5.500000],[15.368799,6.339734],[15.227916,7.168907],[14.995082,7.977093],[14.673224,8.754128],[14.266389,9.490241],[13.779693,10.176174],[13.219258,10.803301],[12.592131,11.363736],[11.906198,11.850432],[11.170085,12.257267],[10.393050,12.579125],[9.584864,12.811959],[8.755691,12.952842],[7.915957,13.000000],[7.395012,12.954423],[6.889897,12.819078],[6.415957,12.598076],[5.987594,12.298133],[5.617824,11.928363],[5.317881,11.500000],[5.096879,11.026060],[4.961534,10.520945],[4.915957,10.000000],[4.961534,9.479055],[5.096879,8.973940],[5.317881,8.500000],[5.617824,8.071637],[5.987594,7.701867],[6.415957,7.401924],[6.889897,7.180922],[7.395012,7.045577],[7.915957,7.000000],[8.249738,6.962392],[8.566783,6.851453],[8.851192,6.672747],[9.088704,6.435235],[9.267410,6.150826],[9.378349,5.833781],[9.415957,5.500000],[9.415957,1.851638],[9.381582,1.523247],[9.279944,1.209095],[9.115447,0.922803],[8.895223,0.676788],[8.628823,0.481716],[8.327798,0.346046],[8.005202,0.275663],[7.675024,0.273617],[7.351581,0.340000],[7.350190,0.334761],[6.516911,0.595400],[5.709543,0.927730],[4.934239,1.329216],[4.196910,1.796799],[3.503177,2.326913],[2.858328,2.915518],[2.267278,3.558128],[1.734533,4.249842],[1.264154,4.985390],[0.859726,5.759163],[0.524333,6.565264],[0.260531,7.397547],[0.070331,8.249668],[-0.044817,9.115132],[-0.084036,9.987341],[-0.047025,10.859647],[0.065931,11.725399],[0.253973,12.578000],[0.515667,13.410948],[0.849019,14.217895],[1.251486,14.992690],[1.720002,15.729426],[2.250994,16.422487],[2.840415,17.066591],[3.483772,17.656827],[4.176161,18.188696],[4.912303,18.658144],[5.686588,19.061591],[6.493112,19.395964],[7.325729,19.658712],[8.178090,19.847833],[9.043699,19.961886],[9.915957,20.000000],[22.415957,20.000000],[22.607299,19.961939],[22.769510,19.853553],[22.877896,19.691342],[22.915957,19.500000],[22.915957,18.500000],[23.062404,18.146447],[23.415957,18.000000],[38.415957,18.000000],[38.769510,18.146447],[38.915957,18.500000],[38.915957,19.500000],[38.954018,19.691342],[39.062404,19.853553],[39.224615,19.961939],[39.415957,20.000000],[51.915957,20.000000],[52.306138,19.961571],[52.681324,19.847759],[53.027098,19.662940],[53.330171,19.414214],[53.578897,19.111141],[53.763716,18.765367],[53.877528,18.390181],[53.915957,18.000000],[53.915957,2.000000],[53.877528,1.609819],[53.763716,1.234633],[53.578897,0.888859],[53.330171,0.585786],[53.027098,0.337060],[52.681324,0.152241],[52.306138,0.038429],[55.915957,0.000000],[61.915957,0.000000],[61.915957,20.000000],[55.915957,20.000000],[55.915957,15.000000],[59.415957,15.000000],[59.607299,14.961939],[59.769510,14.853553],[59.877896,14.691342],[59.915957,14.500000],[59.915957,5.500000],[59.877896,5.308658],[59.769510,5.146447],[59.607299,5.038061],[59.415957,5.000000],[55.915957,5.000000]],paths=[[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58],[59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,0],[126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141]]);}

module pcb(h=pcbthickness,r=0){linear_extrude(height=h)offset(r=r)polygon(points=[[51.915957,0.000000],[16.915957,0.000000],[16.582176,0.037608],[16.265131,0.148547],[15.980722,0.327253],[15.743210,0.564765],[15.564504,0.849174],[15.453565,1.166219],[15.415957,1.500000],[15.415957,5.500000],[15.368799,6.339734],[15.227916,7.168907],[14.995082,7.977093],[14.673224,8.754128],[14.266389,9.490241],[13.779693,10.176174],[13.219258,10.803301],[12.592131,11.363736],[11.906198,11.850432],[11.170085,12.257267],[10.393050,12.579125],[9.584864,12.811959],[8.755691,12.952842],[7.915957,13.000000],[7.395012,12.954423],[6.889897,12.819078],[6.415957,12.598076],[5.987594,12.298133],[5.617824,11.928363],[5.317881,11.500000],[5.096879,11.026060],[4.961534,10.520945],[4.915957,10.000000],[4.961534,9.479055],[5.096879,8.973940],[5.317881,8.500000],[5.617824,8.071637],[5.987594,7.701867],[6.415957,7.401924],[6.889897,7.180922],[7.395012,7.045577],[7.915957,7.000000],[8.249738,6.962392],[8.566783,6.851453],[8.851192,6.672747],[9.088704,6.435235],[9.267410,6.150826],[9.378349,5.833781],[9.415957,5.500000],[9.415957,1.851638],[9.381582,1.523247],[9.279944,1.209095],[9.115447,0.922803],[8.895223,0.676788],[8.628823,0.481716],[8.327798,0.346046],[8.005202,0.275663],[7.675024,0.273617],[7.351581,0.340000],[7.350190,0.334761],[6.516911,0.595400],[5.709543,0.927730],[4.934239,1.329216],[4.196910,1.796799],[3.503177,2.326913],[2.858328,2.915518],[2.267278,3.558128],[1.734533,4.249842],[1.264154,4.985390],[0.859726,5.759163],[0.524333,6.565264],[0.260531,7.397547],[0.070331,8.249668],[-0.044817,9.115132],[-0.084036,9.987341],[-0.047025,10.859647],[0.065931,11.725399],[0.253973,12.578000],[0.515667,13.410948],[0.849019,14.217895],[1.251486,14.992690],[1.720002,15.729426],[2.250994,16.422487],[2.840415,17.066591],[3.483772,17.656827],[4.176161,18.188696],[4.912303,18.658144],[5.686588,19.061591],[6.493112,19.395964],[7.325729,19.658712],[8.178090,19.847833],[9.043699,19.961886],[9.915957,20.000000],[22.415957,20.000000],[22.607299,19.961939],[22.769510,19.853553],[22.877896,19.691342],[22.915957,19.500000],[22.915957,18.500000],[23.062404,18.146447],[23.415957,18.000000],[38.415957,18.000000],[38.769510,18.146447],[38.915957,18.500000],[38.915957,19.500000],[38.954018,19.691342],[39.062404,19.853553],[39.224615,19.961939],[39.415957,20.000000],[51.915957,20.000000],[52.306138,19.961571],[52.681324,19.847759],[53.027098,19.662940],[53.330171,19.414214],[53.578897,19.111141],[53.763716,18.765367],[53.877528,18.390181],[53.915957,18.000000],[53.915957,2.000000],[53.877528,1.609819],[53.763716,1.234633],[53.578897,0.888859],[53.330171,0.585786],[53.027098,0.337060],[52.681324,0.152241],[52.306138,0.038429],[55.915957,0.000000],[61.915957,0.000000],[61.915957,20.000000],[55.915957,20.000000],[55.915957,15.000000],[59.415957,15.000000],[59.607299,14.961939],[59.769510,14.853553],[59.877896,14.691342],[59.915957,14.500000],[59.915957,5.500000],[59.877896,5.308658],[59.769510,5.146447],[59.607299,5.038061],[59.415957,5.000000],[55.915957,5.000000]],paths=[[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58],[59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,0],[126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141]]);}
spacing=77.915957;
pcbwidth=61.915957;
pcblength=20.000000;
// Parts to go on PCB (top)
module parts_top(part=false,hole=false,block=false){
translate([28.365957,1.200000,1.200000])rotate([0,0,90.000000])m0(part,hole,block,casetop); // RevK:R_0402 R_0402_1005Metric (back)
translate([52.015957,18.200000,1.200000])rotate([0,0,45.000000])m1(part,hole,block,casetop); // D6 (back)
translate([27.515957,1.200000,1.200000])rotate([0,0,90.000000])m0(part,hole,block,casetop); // RevK:R_0402 R_0402_1005Metric (back)
translate([43.115957,13.800000,1.200000])m2(part,hole,block,casetop); // U3 (back)
translate([26.665957,1.200000,1.200000])rotate([0,0,90.000000])m0(part,hole,block,casetop); // RevK:R_0402 R_0402_1005Metric (back)
translate([25.815957,1.200000,1.200000])rotate([0,0,90.000000])m0(part,hole,block,casetop); // RevK:R_0402 R_0402_1005Metric (back)
translate([22.215957,6.000000,1.200000])rotate([0,0,90.000000])m1(part,hole,block,casetop); // D6 (back)
translate([30.065957,1.200000,1.200000])rotate([0,0,90.000000])m0(part,hole,block,casetop); // RevK:R_0402 R_0402_1005Metric (back)
translate([20.915957,10.000000,1.200000])rotate([0,0,-90.000000])m3(part,hole,block,casetop); // SW1 (back)
translate([39.652794,15.630000,1.200000])rotate([0,0,180.000000])m0(part,hole,block,casetop); // RevK:R_0402 R_0402_1005Metric (back)
translate([42.315957,6.500000,1.200000])rotate([0,0,90.000000])m4(part,hole,block,casetop); // C1 (back)
translate([45.115957,8.500000,1.200000])rotate([0,0,-90.000000])m5(part,hole,block,casetop); // RevK:C_0402 C_0402_1005Metric (back)
translate([42.715957,18.200000,1.200000])rotate([0,0,180.000000])m2(part,hole,block,casetop); // U3 (back)
translate([22.215957,14.000000,1.200000])m1(part,hole,block,casetop); // D6 (back)
translate([47.875957,11.800000,1.200000])rotate([0,0,90.000000])translate([0.000000,-2.400000,0.000000])rotate([90.000000,-0.000000,-0.000000])m6(part,hole,block,casetop); // RevK:USB-C-Socket-H CSP-USC16-TR (back)
translate([24.965957,1.200000,1.200000])rotate([0,0,90.000000])m0(part,hole,block,casetop); // RevK:R_0402 R_0402_1005Metric (back)
translate([44.365957,15.900000,1.200000])rotate([0,0,180.000000])m0(part,hole,block,casetop); // RevK:R_0402 R_0402_1005Metric (back)
translate([44.115957,2.600000,1.200000])rotate([0,0,180.000000])m1(part,hole,block,casetop); // D6 (back)
translate([39.540957,14.060000,1.200000])rotate([0,0,-90.000000])m5(part,hole,block,casetop); // RevK:C_0402 C_0402_1005Metric (back)
translate([48.115957,18.600000,1.200000])m7(part,hole,block,casetop); // D3 (back)
translate([41.415957,11.700000,1.200000])m8(part,hole,block,casetop); // D2 (back)
translate([44.815957,10.700000,1.200000])m0(part,hole,block,casetop); // RevK:R_0402 R_0402_1005Metric (back)
translate([40.815957,9.500000,1.200000])rotate([0,0,180.000000])m9(part,hole,block,casetop); // RevK:C_0603 C_0603_1608Metric (back)
translate([47.415957,6.300000,1.200000])m0(part,hole,block,casetop); // RevK:R_0402 R_0402_1005Metric (back)
translate([39.415957,11.100000,1.200000])rotate([0,0,-90.000000])m5(part,hole,block,casetop); // RevK:C_0402 C_0402_1005Metric (back)
translate([43.715957,1.200000,1.200000])m5(part,hole,block,casetop); // RevK:C_0402 C_0402_1005Metric (back)
translate([51.615957,6.300000,1.200000])m0(part,hole,block,casetop); // RevK:R_0402 R_0402_1005Metric (back)
translate([49.415957,16.900000,1.200000])rotate([0,0,180.000000])m5(part,hole,block,casetop); // RevK:C_0402 C_0402_1005Metric (back)
translate([49.424957,5.025000,1.200000])rotate([0,0,180.000000])translate([0.000000,1.200000,0.000000])rotate([-0.000000,-0.000000,180.000000])m10(part,hole,block,casetop); // RevK:1.25T-2PWT (Molex 532610271) Molex_PicoBlade_53261-0271_1x02-1MP_P1.25mm_Horizontal (back)
translate([43.215957,10.700000,1.200000])rotate([0,0,180.000000])m11(part,hole,block,casetop); // Q2 (back)
translate([39.965957,17.800000,1.200000])rotate([0,0,90.000000])m12(part,hole,block,casetop); // RevK:C_0805 C_0805_2012Metric (back)
translate([19.915957,14.000000,1.200000])rotate([0,0,-90.000000])m5(part,hole,block,casetop); // RevK:C_0402 C_0402_1005Metric (back)
translate([29.215957,1.200000,1.200000])rotate([0,0,90.000000])m0(part,hole,block,casetop); // RevK:R_0402 R_0402_1005Metric (back)
translate([19.915957,6.000000,1.200000])rotate([0,0,-90.000000])m5(part,hole,block,casetop); // RevK:C_0402 C_0402_1005Metric (back)
translate([44.515957,5.200000,1.200000])rotate([0,0,-90.000000])m0(part,hole,block,casetop); // RevK:R_0402 R_0402_1005Metric (back)
translate([30.915957,10.000000,1.200000])m13(part,hole,block,casetop); // U6 (back)
translate([40.615957,13.300000,1.200000])rotate([0,0,90.000000])m5(part,hole,block,casetop); // RevK:C_0402 C_0402_1005Metric (back)
}

parts_top=12;
// Parts to go on PCB (bottom)
module parts_bottom(part=false,hole=false,block=false){
translate([30.965957,9.250000,0.000000])rotate([0,0,180.000000])rotate([180,0,0])m14(part,hole,block,casebottom); // J4
translate([20.915957,15.500000,0.000000])rotate([0,0,180.000000])rotate([180,0,0])m5(part,hole,block,casebottom); // RevK:C_0402 C_0402_1005Metric
translate([18.415957,4.500000,0.000000])rotate([0,0,180.000000])rotate([180,0,0])m5(part,hole,block,casebottom); // RevK:C_0402 C_0402_1005Metric
translate([19.915957,2.000000,0.000000])rotate([0,0,-90.000000])rotate([180,0,0])m15(part,hole,block,casebottom); // U2
translate([19.915957,18.000000,0.000000])rotate([0,0,90.000000])rotate([180,0,0])m15(part,hole,block,casebottom); // U2
}

parts_bottom=3;
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
{ // SW1
if(part)
{
	b(0,0,0,6.1,3.6,1.8);
	b(0,0,0,7.9,0.6,0.5);
}
if(hole)
{
	b(0,0,0,2.65,1.25,height+1);
}
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

module m11(part=false,hole=false,block=false,height)
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

module m12(part=false,hole=false,block=false,height)
{ // RevK:C_0805 C_0805_2012Metric
// 0805 Capacitor
if(part)
{
	b(0,0,0,2,1.2,1); // Chip
	b(0,0,0,2,1.45,0.2); // Pad size
}
}

module m13(part=false,hole=false,block=false,height)
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

module m14(part=false,hole=false,block=false,height)
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

module m15(part=false,hole=false,block=false,height)
{ // U2
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

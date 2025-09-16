// Generated case design for Recorder/Recorder.kicad_pcb
// By https://github.com/revk/PCBCase
// Generated 2025-09-16 12:34:31
// title:	PCB-AUDIO
// rev:	1
// company:	Adrian Kennard, Andrews & Arnold Ltd
//

// Globals
margin=0.250000;
lip=3.000000;
lipa=0;
lipt=2;
casebottom=7.000000;
casetop=7.000000;
casewall=3.000000;
fit=0.000000;
snap=0.150000;
edge=2.000000;
pcbthickness=1.200000;
function pcbthickness()=1.200000;
nohull=false;
hullcap=1.000000;
hulledge=1.000000;
useredge=true;
datex=8.000000;
datey=0.000000;
datet=0.500000;
dateh=3.000000;
datea=0;
date="2025-09-08";
datef="OCRB";
spacing=68.000000;
pcbwidth=52.000000;
function pcbwidth()=52.000000;
pcblength=25.000000;
function pcblength()=25.000000;
originx=99.000000;
originy=99.500000;

module outline(h=pcbthickness,r=0){linear_extrude(height=h)offset(r=r)polygon(points=[[25.000000,-12.500000],[-13.000000,-12.500000],[-13.258819,-12.465926],[-13.500000,-12.366026],[-13.707107,-12.207107],[-13.866026,-12.000000],[-13.965926,-11.758819],[-14.000000,-11.500000],[-14.000000,11.500000],[-13.965926,11.758819],[-13.866026,12.000000],[-13.707107,12.207107],[-13.500000,12.366026],[-13.258819,12.465926],[-13.000000,12.500000],[25.000000,12.500000],[25.258819,12.465926],[25.500000,12.366026],[25.707107,12.207107],[25.866026,12.000000],[25.965926,11.758819],[26.000000,11.500000],[26.000000,-11.500000],[25.965926,-11.758819],[25.866026,-12.000000],[25.707107,-12.207107],[25.500000,-12.366026],[25.258819,-12.465926]],paths=[[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27]]);}

module pcb(h=pcbthickness,r=0){linear_extrude(height=h)offset(r=r)polygon(points=[[25.000000,-12.500000],[-20.000000,-12.500000],[-20.671787,-12.462273],[-21.335126,-12.349568],[-21.981675,-12.163300],[-22.603303,-11.905814],[-23.192193,-11.580346],[-23.740939,-11.190989],[-24.242641,-10.742641],[-24.690989,-10.240939],[-25.080346,-9.692193],[-25.405814,-9.103303],[-25.663300,-8.481675],[-25.849568,-7.835126],[-25.962273,-7.171787],[-26.000000,-6.500000],[-26.000000,6.500000],[-25.962273,7.171787],[-25.849568,7.835126],[-25.663300,8.481675],[-25.405814,9.103303],[-25.080346,9.692193],[-24.690989,10.240939],[-24.242641,10.742641],[-23.740939,11.190989],[-23.192193,11.580346],[-22.603303,11.905814],[-21.981675,12.163300],[-21.335126,12.349568],[-20.671787,12.462273],[-20.000000,12.500000],[-19.808658,12.461939],[-19.646447,12.353553],[-19.538061,12.191342],[-19.500000,12.000000],[-19.500000,9.000000],[-19.538061,8.808658],[-19.646447,8.646447],[-19.808658,8.538061],[-20.000000,8.500000],[-20.517638,8.431852],[-21.000000,8.232051],[-21.414214,7.914214],[-21.732051,7.500000],[-21.931852,7.017638],[-22.000000,6.500000],[-22.000000,-6.500000],[-21.931852,-7.017638],[-21.732051,-7.500000],[-21.414214,-7.914214],[-21.000000,-8.232051],[-20.517638,-8.431852],[-20.000000,-8.500000],[-16.000000,-8.500000],[-15.482362,-8.431852],[-15.000000,-8.232051],[-14.585786,-7.914214],[-14.267949,-7.500000],[-14.068148,-7.017638],[-14.000000,-6.500000],[-14.000000,11.500000],[-13.965926,11.758819],[-13.866026,12.000000],[-13.707107,12.207107],[-13.500000,12.366026],[-13.258819,12.465926],[-13.000000,12.500000],[25.000000,12.500000],[25.258819,12.465926],[25.500000,12.366026],[25.707107,12.207107],[25.866026,12.000000],[25.965926,11.758819],[26.000000,11.500000],[26.000000,-11.500000],[25.965926,-11.758819],[25.866026,-12.000000],[25.707107,-12.207107],[25.500000,-12.366026],[25.258819,-12.465926]],paths=[[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79]]);}
module D10(){translate([-3.000000,-11.000000,1.200000])rotate([0,0,45.000000])children();}
module part_D10(part=true,hole=false,block=false)
{
translate([-3.000000,-11.000000,1.200000])rotate([0,0,45.000000])m0(part,hole,block,casetop); // D10 (back)
};
module R10(){translate([-4.950000,-9.500000,1.200000])rotate([0,0,90.000000])children();}
module part_R10(part=true,hole=false,block=false)
{
translate([-4.950000,-9.500000,1.200000])rotate([0,0,90.000000])m1(part,hole,block,casetop); // RevK:R_0201 R_0201_0603Metric (back)
};
module D6(){translate([1.000000,-11.000000,1.200000])rotate([0,0,45.000000])children();}
module part_D6(part=true,hole=false,block=false)
{
translate([1.000000,-11.000000,1.200000])rotate([0,0,45.000000])m0(part,hole,block,casetop); // D10 (back)
};
module Q1(){translate([15.562500,4.687500,1.200000])rotate([0,0,180.000000])children();}
module part_Q1(part=true,hole=false,block=false)
{
translate([15.562500,4.687500,1.200000])rotate([0,0,180.000000])m2(part,hole,block,casetop); // Q1 (back)
};
module R11(){translate([15.700000,11.300000,1.200000])rotate([0,0,90.000000])children();}
module part_R11(part=true,hole=false,block=false)
{
translate([15.700000,11.300000,1.200000])rotate([0,0,90.000000])m1(part,hole,block,casetop); // RevK:R_0201 R_0201_0603Metric (back)
};
module U3(){translate([12.062500,4.687500,1.200000])children();}
module part_U3(part=true,hole=false,block=false)
{
translate([12.062500,4.687500,1.200000])m3(part,hole,block,casetop); // U3 (back)
};
module R12(){translate([21.000000,2.000000,1.200000])rotate([0,0,180.000000])children();}
module part_R12(part=true,hole=false,block=false)
{
translate([21.000000,2.000000,1.200000])rotate([0,0,180.000000])m1(part,hole,block,casetop); // RevK:R_0201 R_0201_0603Metric (back)
};
module R13(){translate([21.100000,11.800000,1.200000])children();}
module part_R13(part=true,hole=false,block=false)
{
translate([21.100000,11.800000,1.200000])m1(part,hole,block,casetop); // RevK:R_0201 R_0201_0603Metric (back)
};
module D8(){translate([-1.000000,-11.000000,1.200000])rotate([0,0,45.000000])children();}
module part_D8(part=true,hole=false,block=false)
{
translate([-1.000000,-11.000000,1.200000])rotate([0,0,45.000000])m0(part,hole,block,casetop); // D10 (back)
};
module C15(){translate([-10.000000,7.500000,1.200000])rotate([0,0,-90.000000])children();}
module part_C15(part=true,hole=false,block=false)
{
translate([-10.000000,7.500000,1.200000])rotate([0,0,-90.000000])m4(part,hole,block,casetop); // RevK:C_0201 C_0201_0603Metric (back)
};
module D5(){translate([3.000000,-11.000000,1.200000])rotate([0,0,45.000000])children();}
module part_D5(part=true,hole=false,block=false)
{
translate([3.000000,-11.000000,1.200000])rotate([0,0,45.000000])m0(part,hole,block,casetop); // D10 (back)
};
module D7(){translate([-8.500000,-7.500000,1.200000])rotate([0,0,90.000000])children();}
module part_D7(part=true,hole=false,block=false)
{
translate([-8.500000,-7.500000,1.200000])rotate([0,0,90.000000])m0(part,hole,block,casetop); // D10 (back)
};
module V1(){translate([1.000000,12.500000,1.200000])children();}
module part_V1(part=true,hole=false,block=false)
{
};
module TP1(){translate([-12.800000,5.200000,1.200000])children();}
module part_TP1(part=true,hole=false,block=false)
{
};
module R16(){translate([-7.900000,-9.500000,1.200000])rotate([0,0,-90.000000])children();}
module part_R16(part=true,hole=false,block=false)
{
translate([-7.900000,-9.500000,1.200000])rotate([0,0,-90.000000])m1(part,hole,block,casetop); // RevK:R_0201 R_0201_0603Metric (back)
};
module R3(){translate([0.150000,-9.500000,1.200000])rotate([0,0,90.000000])children();}
module part_R3(part=true,hole=false,block=false)
{
translate([0.150000,-9.500000,1.200000])rotate([0,0,90.000000])m1(part,hole,block,casetop); // RevK:R_0201 R_0201_0603Metric (back)
};
module C13(){translate([-10.000000,-7.500000,1.200000])rotate([0,0,-90.000000])children();}
module part_C13(part=true,hole=false,block=false)
{
translate([-10.000000,-7.500000,1.200000])rotate([0,0,-90.000000])m4(part,hole,block,casetop); // RevK:C_0201 C_0201_0603Metric (back)
};
module R2(){translate([10.200000,7.400000,1.200000])rotate([0,0,-90.000000])children();}
module part_R2(part=true,hole=false,block=false)
{
translate([10.200000,7.400000,1.200000])rotate([0,0,-90.000000])m1(part,hole,block,casetop); // RevK:R_0201 R_0201_0603Metric (back)
};
module C1(){translate([24.000000,-1.000000,1.200000])children();}
module part_C1(part=true,hole=false,block=false)
{
translate([24.000000,-1.000000,1.200000])m5(part,hole,block,casetop); // RevK:C_0603 C_0603_1608Metric (back)
};
module C11(){translate([-10.000000,9.000000,1.200000])rotate([0,0,-90.000000])children();}
module part_C11(part=true,hole=false,block=false)
{
translate([-10.000000,9.000000,1.200000])rotate([0,0,-90.000000])m4(part,hole,block,casetop); // RevK:C_0201 C_0201_0603Metric (back)
};
module SW1(){translate([14.000000,0.000000,1.200000])rotate([0,0,180.000000])children();}
module part_SW1(part=true,hole=false,block=false)
{
translate([14.000000,0.000000,1.200000])rotate([0,0,180.000000])m6(part,hole,block,casetop); // SW1 (back)
};
module U4(){translate([14.050000,9.000000,1.200000])rotate([0,0,90.000000])children();}
module part_U4(part=true,hole=false,block=false)
{
translate([14.050000,9.000000,1.200000])rotate([0,0,90.000000])m3(part,hole,block,casetop); // U3 (back)
};
module U2(){translate([21.500000,0.500000,1.200000])rotate([0,0,90.000000])children();}
module part_U2(part=true,hole=false,block=false)
{
translate([21.500000,0.500000,1.200000])rotate([0,0,90.000000])m7(part,hole,block,casetop); // U2 (back)
};
module R4(){translate([-0.700000,-9.500000,1.200000])rotate([0,0,90.000000])children();}
module part_R4(part=true,hole=false,block=false)
{
translate([-0.700000,-9.500000,1.200000])rotate([0,0,90.000000])m1(part,hole,block,casetop); // RevK:R_0201 R_0201_0603Metric (back)
};
module D4(){translate([5.000000,-11.000000,1.200000])rotate([0,0,45.000000])children();}
module part_D4(part=true,hole=false,block=false)
{
translate([5.000000,-11.000000,1.200000])rotate([0,0,45.000000])m0(part,hole,block,casetop); // D10 (back)
};
module J5(){translate([20.500000,7.000000,1.200000])rotate([0,0,90.000000])children();}
module part_J5(part=true,hole=false,block=false)
{
translate([20.500000,7.000000,1.200000])rotate([0,0,90.000000])translate([0.000000,-1.900000,0.000000])rotate([90.000000,0.000000,0.000000])m8(part,hole,block,casetop); // RevK:USB-C-Socket-H CSP-USC16-TR (back)
};
module D9(){translate([-8.500000,7.500000,1.200000])rotate([0,0,90.000000])children();}
module part_D9(part=true,hole=false,block=false)
{
translate([-8.500000,7.500000,1.200000])rotate([0,0,90.000000])m0(part,hole,block,casetop); // D10 (back)
};
module R1(){translate([10.200000,-8.900000,1.200000])rotate([0,0,-90.000000])children();}
module part_R1(part=true,hole=false,block=false)
{
translate([10.200000,-8.900000,1.200000])rotate([0,0,-90.000000])m1(part,hole,block,casetop); // RevK:R_0201 R_0201_0603Metric (back)
};
module D1(){translate([19.200000,-0.500000,1.200000])rotate([0,0,-90.000000])children();}
module part_D1(part=true,hole=false,block=false)
{
translate([19.200000,-0.500000,1.200000])rotate([0,0,-90.000000])m9(part,hole,block,casetop); // RevK:D_0402 DFN1006-2L (back)
};
module C12(){translate([-4.950000,-11.000000,1.200000])rotate([0,0,-90.000000])children();}
module part_C12(part=true,hole=false,block=false)
{
translate([-4.950000,-11.000000,1.200000])rotate([0,0,-90.000000])m4(part,hole,block,casetop); // RevK:C_0201 C_0201_0603Metric (back)
};
module C9(){translate([14.562500,-4.500000,1.200000])children();}
module part_C9(part=true,hole=false,block=false)
{
translate([14.562500,-4.500000,1.200000])m10(part,hole,block,casetop); // RevK:C_0805 C_0805_2012Metric (back)
};
module D3(){translate([16.500000,8.500000,1.200000])rotate([0,0,90.000000])children();}
module part_D3(part=true,hole=false,block=false)
{
translate([16.500000,8.500000,1.200000])rotate([0,0,90.000000])m11(part,hole,block,casetop); // D3 (back)
};
module D2(){translate([21.100000,-1.000000,1.200000])children();}
module part_D2(part=true,hole=false,block=false)
{
translate([21.100000,-1.000000,1.200000])m9(part,hole,block,casetop); // RevK:D_0402 DFN1006-2L (back)
};
module PCB1(){translate([1.000000,-0.500000,1.200000])children();}
module part_PCB1(part=true,hole=false,block=false)
{
};
module R7(){translate([-3.250000,-9.500000,1.200000])rotate([0,0,90.000000])children();}
module part_R7(part=true,hole=false,block=false)
{
translate([-3.250000,-9.500000,1.200000])rotate([0,0,90.000000])m1(part,hole,block,casetop); // RevK:R_0201 R_0201_0603Metric (back)
};
module C3(){translate([24.000000,1.000000,1.200000])children();}
module part_C3(part=true,hole=false,block=false)
{
translate([24.000000,1.000000,1.200000])m5(part,hole,block,casetop); // RevK:C_0603 C_0603_1608Metric (back)
};
module R5(){translate([-1.550000,-9.500000,1.200000])rotate([0,0,90.000000])children();}
module part_R5(part=true,hole=false,block=false)
{
translate([-1.550000,-9.500000,1.200000])rotate([0,0,90.000000])m1(part,hole,block,casetop); // RevK:R_0201 R_0201_0603Metric (back)
};
module R15(){translate([-7.200000,-9.500000,1.200000])rotate([0,0,90.000000])children();}
module part_R15(part=true,hole=false,block=false)
{
translate([-7.200000,-9.500000,1.200000])rotate([0,0,90.000000])m1(part,hole,block,casetop); // RevK:R_0201 R_0201_0603Metric (back)
};
module U1(){translate([1.000000,-0.500000,1.200000])children();}
module part_U1(part=true,hole=false,block=false)
{
translate([1.000000,-0.500000,1.200000])m12(part,hole,block,casetop); // U1 (back)
};
module C2(){translate([9.400000,6.800000,1.200000])rotate([0,0,-90.000000])children();}
module part_C2(part=true,hole=false,block=false)
{
translate([9.400000,6.800000,1.200000])rotate([0,0,-90.000000])m4(part,hole,block,casetop); // RevK:C_0201 C_0201_0603Metric (back)
};
module C4(){translate([-7.300000,4.800000,1.200000])rotate([0,0,90.000000])children();}
module part_C4(part=true,hole=false,block=false)
{
translate([-7.300000,4.800000,1.200000])rotate([0,0,90.000000])m4(part,hole,block,casetop); // RevK:C_0201 C_0201_0603Metric (back)
};
module R6(){translate([-2.400000,-9.500000,1.200000])rotate([0,0,90.000000])children();}
module part_R6(part=true,hole=false,block=false)
{
translate([-2.400000,-9.500000,1.200000])rotate([0,0,90.000000])m1(part,hole,block,casetop); // RevK:R_0201 R_0201_0603Metric (back)
};
module C10(){translate([-10.000000,-9.000000,1.200000])rotate([0,0,-90.000000])children();}
module part_C10(part=true,hole=false,block=false)
{
translate([-10.000000,-9.000000,1.200000])rotate([0,0,-90.000000])m4(part,hole,block,casetop); // RevK:C_0201 C_0201_0603Metric (back)
};
module J6(){translate([21.200000,-6.000000,1.200000])rotate([0,0,180.000000])children();}
module part_J6(part=true,hole=false,block=false)
{
translate([21.200000,-6.000000,1.200000])rotate([0,0,180.000000])translate([0.000000,1.200000,0.000000])rotate([-0.000000,-0.000000,180.000000])m13(part,hole,block,casetop); // RevK:1.25T-2PWT (Molex 532610271) Molex_PicoBlade_53261-0271_1x02-1MP_P1.25mm_Horizontal (back)
};
module C6(){translate([11.000000,-5.500000,1.200000])rotate([0,0,90.000000])children();}
module part_C6(part=true,hole=false,block=false)
{
translate([11.000000,-5.500000,1.200000])rotate([0,0,90.000000])m14(part,hole,block,casetop); // C6 (back)
};
module R9(){translate([-4.100000,-9.500000,1.200000])rotate([0,0,90.000000])children();}
module part_R9(part=true,hole=false,block=false)
{
translate([-4.100000,-9.500000,1.200000])rotate([0,0,90.000000])m1(part,hole,block,casetop); // RevK:R_0201 R_0201_0603Metric (back)
};
module R14(){translate([-6.500000,-9.500000,1.200000])rotate([0,0,-90.000000])children();}
module part_R14(part=true,hole=false,block=false)
{
translate([-6.500000,-9.500000,1.200000])rotate([0,0,-90.000000])m1(part,hole,block,casetop); // RevK:R_0201 R_0201_0603Metric (back)
};
module C5(){translate([11.100000,7.400000,1.200000])rotate([0,0,-90.000000])children();}
module part_C5(part=true,hole=false,block=false)
{
translate([11.100000,7.400000,1.200000])rotate([0,0,-90.000000])m5(part,hole,block,casetop); // RevK:C_0603 C_0603_1608Metric (back)
};
module R8(){translate([12.600000,6.600000,1.200000])children();}
module part_R8(part=true,hole=false,block=false)
{
translate([12.600000,6.600000,1.200000])m1(part,hole,block,casetop); // RevK:R_0201 R_0201_0603Metric (back)
};
module C14(){translate([7.200000,-11.000000,1.200000])rotate([0,0,-90.000000])children();}
module part_C14(part=true,hole=false,block=false)
{
translate([7.200000,-11.000000,1.200000])rotate([0,0,-90.000000])m4(part,hole,block,casetop); // RevK:C_0201 C_0201_0603Metric (back)
};
module C7(){translate([17.000000,11.200000,1.200000])children();}
module part_C7(part=true,hole=false,block=false)
{
translate([17.000000,11.200000,1.200000])m15(part,hole,block,casetop); // RevK:C_0402 C_0402_1005Metric (back)
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
part_TP1(part,hole,block);
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

parts_top=15;
module J4(){translate([-4.350000,-1.050000,0.000000])rotate([0,0,90.000000])rotate([180,0,0])children();}
module part_J4(part=true,hole=false,block=false)
{
translate([-4.350000,-1.050000,0.000000])rotate([0,0,90.000000])rotate([180,0,0])m16(part,hole,block,casebottom); // J4
};
module V2(){translate([1.000000,-12.500000,0.000000])rotate([180,0,0])children();}
module part_V2(part=true,hole=false,block=false)
{
};
module J3(){translate([13.500000,-9.800000,0.000000])rotate([180,0,0])children();}
module part_J3(part=true,hole=false,block=false)
{
};
module BT1(){translate([8.500000,0.000000,0.000000])rotate([0,0,180.000000])rotate([180,0,0])children();}
module part_BT1(part=true,hole=false,block=false)
{
translate([8.500000,0.000000,0.000000])rotate([0,0,180.000000])rotate([180,0,0])m17(part,hole,block,casebottom); // BT1
};
module U5(){translate([-11.500000,10.500000,0.000000])rotate([0,0,90.000000])rotate([180,0,0])children();}
module part_U5(part=true,hole=false,block=false)
{
translate([-11.500000,10.500000,0.000000])rotate([0,0,90.000000])rotate([180,0,0])m18(part,hole,block,casebottom); // U5
};
module J1(){translate([21.190000,-6.200000,0.000000])rotate([0,0,180.000000])rotate([180,0,0])children();}
module part_J1(part=true,hole=false,block=false)
{
};
module U6(){translate([-11.500000,-10.500000,0.000000])rotate([0,0,-90.000000])rotate([180,0,0])children();}
module part_U6(part=true,hole=false,block=false)
{
translate([-11.500000,-10.500000,0.000000])rotate([0,0,-90.000000])rotate([180,0,0])m18(part,hole,block,casebottom); // U5
};
// Parts to go on PCB (bottom)
module parts_bottom(part=false,hole=false,block=false){
part_J4(part,hole,block);
part_V2(part,hole,block);
part_J3(part,hole,block);
part_BT1(part,hole,block);
part_U5(part,hole,block);
part_J1(part,hole,block);
part_U6(part,hole,block);
}

parts_bottom=4;
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
                translate([0,0,height])cylinder(d=1.001,h=0.001,$fn=16);
        }
}
if(block)
{
        hull()
        {
                b(0,0,.8,2.8,2.8,1);
                translate([0,0,height])cylinder(d=2,h=1,$fn=16);
        }
}
}

module m1(part=false,hole=false,block=false,height)
{ // RevK:R_0201 R_0201_0603Metric
// 0402 Resistor
if(part)
{
	b(0,0,0,1.1,0.4,0.2); // Pad size
	b(0,0,0,0.6,0.3,0.3); // Chip
}
}

module m2(part=false,hole=false,block=false,height)
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

module m3(part=false,hole=false,block=false,height)
{ // U3
// SOT-23-5
if(part)
{
	b(0,0,0,1.726,3.026,1.2); // Part
	b(0,0,0,3.6,2.5,0.5); // Pins (well, one extra)
}
}

module m4(part=false,hole=false,block=false,height)
{ // RevK:C_0201 C_0201_0603Metric
// 0402 Capacitor
if(part)
{
        b(0,0,0,1.1,0.4,0.2); // Pad size
        b(0,0,0,0.6,0.3,0.3); // Chip
}
}

module m5(part=false,hole=false,block=false,height)
{ // RevK:C_0603 C_0603_1608Metric
// 0603 Capacitor
if(part)
{
	b(0,0,0,1.6,0.8,1); // Chip
	b(0,0,0,1.6,0.95,0.2); // Pad size
}
}

module m6(part=false,hole=false,block=false,height)
{ // SW1
// Push switch
if(part)
{
 b(0,0,0,5,9,1);	// Pads
}
if(hole)
{
 b(0,0,0,6,6,height+1);
 hull()
 {
 	b(0,0,5,6,6,1);
	translate([0,0,10])cylinder(d=15,h=10);
 }
}
if(block)
{
 b(0,0,0,8,8,height);
 hull()
 {
 	b(0,0,5,8,8,1);
	translate([0,0,10])cylinder(d=17,h=10);
 }
}
}

module m7(part=false,hole=false,block=false,height)
{ // U2
if(part)
{
	b(0,0,0,0.78,0.78,0.5);
}
}

module m8(part=false,hole=false,block=false,height)
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

module m9(part=false,hole=false,block=false,height)
{ // RevK:D_0402 DFN1006-2L
// DFN1006-2L
if(part)
{
	b(0,0,0,1.0,0.6,0.45); // Chip
}
}

module m10(part=false,hole=false,block=false,height)
{ // RevK:C_0805 C_0805_2012Metric
// 0805 Capacitor
if(part)
{
	b(0,0,0,2,1.2,1); // Chip
	b(0,0,0,2,1.45,0.2); // Pad size
}
}

module m11(part=false,hole=false,block=false,height)
{ // D3
// SOD-123 Diode
if(part)
{
	b(0,0,0,2.85,1.8,1.35); // part
	b(0,0,0,4.2,1.2,0.7); // pads
}
}

module m12(part=false,hole=false,block=false,height)
{ // U1
// ESP32-S3-MINI-1
translate([-15.4/2,-15.45/2,0])
{
	if(part)
	{
		cube([15.4,20.5,0.8]);
		translate([0.7,0.5,0])cube([14,13.55,2.4]);
		cube([15.4,20.5,0.8]);
	}
}
}

module m13(part=false,hole=false,block=false,height)
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

module m14(part=false,hole=false,block=false,height)
{ // C6
if(part)
{
	b(0,0,0,3.5,2.8,1.9);
}
}

module m15(part=false,hole=false,block=false,height)
{ // RevK:C_0402 C_0402_1005Metric
// 0402 Capacitor
if(part)
{
	b(0,0,0,1.0,0.5,1); // Chip
	b(0,0,0,1.5,0.65,0.2); // Pad size
}
}

module m16(part=false,hole=false,block=false,height)
{ // J4
if(part)
{
	b(0,0.1,0,14.85,14.5,2); // Main case
	b(-7.75,6.85,0,1.2,1.5,0.2); // Tab
	b(-7.75,-2.75,0,1.2,2.2,0.2); // Tab
	b(7.75,-2.75,0,1.2,2.2,0.2); // Tab
	for(i=[0:8])b(2.25-i*1.1,7.85,0,0.7,1.6,0.4); // Pins
	b(-0.95,-2.15,0.25,11,15,1.5);	// Card (inserted)
}
if(hole)
{
    hull()
    {
        b(-0.95,-8.47-0.5,0.25,11,1,1.5);	// Card
        b(-0.95,-8.47-0.5-10,0.25-10,11+20,1,1.5+20);	// Card
    }
}
}

module m17(part=false,hole=false,block=false,height)
{ // BT1
if(part)
{
	b(0,0,0,36,25,6);
}

}

module m18(part=false,hole=false,block=false,height)
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
if(block)
{
    translate([1,0,-pcbthickness-5])cylinder(d=3,h=5);
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

module top_half(fit=0)
{
	difference()
	{
		translate([-casebottom-100,-casewall-100,pcbthickness+0.01]) cube([pcbwidth+casewall*2+200,pcblength+casewall*2+200,height]);
		translate([0,0,pcbthickness])
        	{
			snape=lip/5;
			snaph=(lip-snape*2)/3;
			if(lipt==1)rotate(lipa)hull()
			{
				translate([0,-pcblength,lip/2])cube([0.001,pcblength*2,0.001]);
				translate([-lip/2,-pcblength,0])cube([lip,pcblength*2,0.001]);
			} else if(lipt==2)for(a=[0,90,180,270])rotate(a+lipa)hull()
			{
				translate([0,-pcblength-pcbwidth,lip/2])cube([0.001,pcblength*2+pcbwidth*2,0.001]);
				translate([-lip/2,-pcblength-pcbwidth,0])cube([lip,pcblength*2+pcbwidth*2,0.001]);
			}
            		difference()
            		{
                		pcb_hulled(lip,casewall);
				if(snap)
                        	{
					hull()
					{
						pcb_hulled(0.1,casewall/2-snap/2+fit);
						translate([0,0,snape])pcb_hulled(snaph,casewall/2+snap/2+fit);
						translate([0,0,lip-snape-snaph])pcb_hulled(0.1,casewall/2-snap/2+fit);
					}
					translate([0,0,lip-snape-snaph])pcb_hulled(snaph,casewall/2-snap/2+fit);
					hull()
					{
						translate([0,0,lip-snape])pcb_hulled(0.1,casewall/2-snap/2+fit);
						translate([0,0,lip])pcb_hulled(0.1,casewall/2+snap/2+fit);
					}
                        	}
				else pcb_hulled(lip,casewall/2+fit);
				if(lipt==0)translate([-pcbwidth,-pcblength,0])cube([pcbwidth*2,pcblength*2,lip]);
				else if(lipt==1) rotate(lipa)translate([0,-pcblength,0])hull()
				{
					translate([lip/2,0,0])cube([pcbwidth,pcblength*2,lip]);
					translate([-lip/2,0,lip])cube([pcbwidth,pcblength*2,lip]);
				}
				else if(lipt==2)for(a=[0,180])rotate(a+lipa)hull()
                		{
                            		translate([lip/2,lip/2,0])cube([pcbwidth+pcblength,pcbwidth+pcblength,lip]);
                            		translate([-lip/2,-lip/2,lip])cube([pcbwidth+pcblength,pcbwidth+pcblength,lip]);
                		}
            		}
            		difference()
            		{
				if(snap)
                        	{
					hull()
					{
						translate([0,0,-0.1])pcb_hulled(0.1,casewall/2+snap/2-fit);
						translate([0,0,snape-0.1])pcb_hulled(0.1,casewall/2-snap/2-fit);
					}
					translate([0,0,snape])pcb_hulled(snaph,casewall/2-snap/2-fit);
					hull()
					{
						translate([0,0,snape+snaph])pcb_hulled(0.1,casewall/2-snap/2-fit);
						translate([0,0,lip-snape-snaph])pcb_hulled(snaph,casewall/2+snap/2-fit);
						translate([0,0,lip-0.1])pcb_hulled(0.1,casewall/2-snap/2-fit);
					}
                        	}
				else pcb_hulled(lip,casewall/2-fit);
				if(lipt==1)rotate(lipa+180)translate([0,-pcblength,0])hull()
				{
					translate([lip/2,0,0])cube([pcbwidth,pcblength*2,lip+0.1]);
					translate([-lip/2,0,lip])cube([pcbwidth,pcblength*2,lip+0.1]);
				}
				else if(lipt==2)for(a=[90,270])rotate(a+lipa)hull()
                		{
                            		translate([lip/2,lip/2,0])cube([pcbwidth+pcblength,pcbwidth+pcblength,lip]);
                            		translate([-lip/2,-lip/2,lip])cube([pcbwidth+pcblength,pcbwidth+pcblength,lip]);
                		}
			}
            	}
		minkowski()
                {
                	union()
                	{
                		parts_top(part=true);
                		parts_bottom(part=true);
                	}
                	translate([-0.01,-0.01,-height])cube([0.02,0.02,height]);
                }
        }
	minkowski()
        {
        	union()
                {
                	parts_top(part=true);
                	parts_bottom(part=true);
                }
                translate([-0.01,-0.01,0])cube([0.02,0.02,height]);
        }
}

module case_wall()
{
	difference()
	{
		solid_case();
		translate([0,0,-height])pcb_hulled(height*2,0.02);
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

module top_cut(fit=0)
{
	difference()
	{
		top_half(fit);
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
		 top_cut(-fit);
	}
}

module top_body()
{
	difference()
	{
		intersection()
		{
			solid_case();
			pcb_hulled(casetop+pcbthickness,0.03);
		}
		if(parts_top)minkowski()
		{
			if(nohull)parts_top(part=true);
			else hull(){parts_top(part=true);pcb_hulled();}
			translate([0,0,margin-height])cylinder(r=margin*2,h=height,$fn=8);
		}
	}
	intersection()
	{
		pcb_hulled(casetop+pcbthickness);
		union()
		{
			parts_top(block=true);
			parts_bottom(block=true);
		}
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
	translate([0,0,pcbthickness+casetop])rotate([180,0,0])children();
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
			translate([0,0,-casebottom])pcb_hulled(casebottom+pcbthickness,0.03);
		}
		if(parts_bottom)minkowski()
		{
			if(nohull)parts_bottom(part=true);
			else hull()parts_bottom(part=true);
			translate([0,0,-margin])cylinder(r=margin*2,h=height,$fn=8);
		}
	}
	intersection()
	{
		translate([0,0,-casebottom])pcb_hulled(casebottom+pcbthickness);
		union()
		{
			parts_top(block=true);
			parts_bottom(block=true);
		}
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
	translate([0,0,casebottom])children();
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

module datecode()
{
	minkowski()
	{
		translate([datex,datey,-1])rotate(datea)scale([-1,1])linear_extrude(1)text(date,size=dateh,halign="center",valign="center",font=datef);
		cylinder(d1=datet,d2=0,h=datet,$fn=6);
	}
}
top();

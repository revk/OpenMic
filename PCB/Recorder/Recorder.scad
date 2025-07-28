// Generated case design for Recorder/Recorder.kicad_pcb
// By https://github.com/revk/PCBCase
// Generated 2025-07-09 10:48:54
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
spacing=69.915957;
pcbwidth=53.915957;
pcblength=20.000000;
originx=96.042022;
originy=100.000000;

module outline(h=pcbthickness,r=0){linear_extrude(height=h)offset(r=r)polygon(points=[[24.957978,-10.000000],[-10.042022,-10.000000],[-10.375803,-9.962392],[-10.692847,-9.851453],[-10.977256,-9.672747],[-11.214769,-9.435235],[-11.393475,-9.150826],[-11.504413,-8.833781],[-11.542022,-8.500000],[-11.542022,-4.500000],[-11.589180,-3.660266],[-11.730062,-2.831093],[-11.962896,-2.022907],[-12.284755,-1.245872],[-12.691590,-0.509759],[-13.178285,0.176174],[-13.738720,0.803301],[-14.365848,1.363736],[-15.051781,1.850432],[-15.787893,2.257267],[-16.564928,2.579125],[-17.373114,2.811959],[-18.202288,2.952842],[-19.042022,3.000000],[-19.562966,2.954423],[-20.068082,2.819078],[-20.542022,2.598076],[-20.970384,2.298133],[-21.340155,1.928363],[-21.640098,1.500000],[-21.861099,1.026060],[-21.996445,0.520945],[-22.042022,0.000000],[-21.996445,-0.520945],[-21.861099,-1.026060],[-21.640098,-1.500000],[-21.340155,-1.928363],[-20.970384,-2.298133],[-20.542022,-2.598076],[-20.068082,-2.819078],[-19.562966,-2.954423],[-19.042022,-3.000000],[-18.708240,-3.037608],[-18.391196,-3.148547],[-18.106787,-3.327253],[-17.869274,-3.564765],[-17.690568,-3.849174],[-17.579630,-4.166219],[-17.542022,-4.500000],[-17.542022,-8.148362],[-17.578226,-8.476885],[-17.680006,-8.791171],[-17.844452,-9.077690],[-18.064483,-9.324106],[-18.330629,-9.519814],[-18.631432,-9.656389],[-18.953944,-9.727950],[-19.284282,-9.731419],[-19.607788,-9.665239],[-20.441067,-9.404600],[-21.248436,-9.072270],[-22.023740,-8.670784],[-22.761068,-8.203201],[-23.454801,-7.673087],[-24.099650,-7.084482],[-24.690700,-6.441872],[-25.223445,-5.750158],[-25.693825,-5.014610],[-26.098252,-4.240837],[-26.433645,-3.434736],[-26.697447,-2.602453],[-26.887647,-1.750332],[-27.002796,-0.884868],[-27.042014,-0.012659],[-27.005004,0.859647],[-26.892047,1.725399],[-26.704005,2.578000],[-26.442311,3.410948],[-26.108960,4.217895],[-25.706492,4.992690],[-25.237977,5.729426],[-24.706985,6.422487],[-24.117564,7.066591],[-23.474207,7.656827],[-22.781818,8.188696],[-22.045676,8.658144],[-21.271391,9.061591],[-20.464866,9.395964],[-19.632250,9.658712],[-18.779888,9.847833],[-17.914280,9.961886],[-17.042022,10.000000],[-4.542022,10.000000],[-4.350680,9.961939],[-4.188468,9.853553],[-4.080082,9.691342],[-4.042022,9.500000],[-4.042022,8.500000],[-3.895575,8.146447],[-3.542022,8.000000],[11.457978,8.000000],[11.811532,8.146447],[11.957978,8.500000],[11.957978,9.500000],[11.996039,9.691342],[12.104425,9.853553],[12.266637,9.961939],[12.457978,10.000000],[24.957978,10.000000],[25.348159,9.961571],[25.723346,9.847759],[26.069119,9.662940],[26.372192,9.414214],[26.620918,9.111141],[26.805738,8.765367],[26.919549,8.390181],[26.957978,8.000000],[26.957978,-8.000000],[26.919549,-8.390181],[26.805738,-8.765367],[26.620918,-9.111141],[26.372192,-9.414214],[26.069119,-9.662940],[25.723346,-9.847759],[25.348159,-9.961571]],paths=[[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124]]);}

module pcb(h=pcbthickness,r=0){linear_extrude(height=h)offset(r=r)polygon(points=[[24.957978,-10.000000],[-10.042022,-10.000000],[-10.375803,-9.962392],[-10.692847,-9.851453],[-10.977256,-9.672747],[-11.214769,-9.435235],[-11.393475,-9.150826],[-11.504413,-8.833781],[-11.542022,-8.500000],[-11.542022,-4.500000],[-11.589180,-3.660266],[-11.730062,-2.831093],[-11.962896,-2.022907],[-12.284755,-1.245872],[-12.691590,-0.509759],[-13.178285,0.176174],[-13.738720,0.803301],[-14.365848,1.363736],[-15.051781,1.850432],[-15.787893,2.257267],[-16.564928,2.579125],[-17.373114,2.811959],[-18.202288,2.952842],[-19.042022,3.000000],[-19.562966,2.954423],[-20.068082,2.819078],[-20.542022,2.598076],[-20.970384,2.298133],[-21.340155,1.928363],[-21.640098,1.500000],[-21.861099,1.026060],[-21.996445,0.520945],[-22.042022,0.000000],[-21.996445,-0.520945],[-21.861099,-1.026060],[-21.640098,-1.500000],[-21.340155,-1.928363],[-20.970384,-2.298133],[-20.542022,-2.598076],[-20.068082,-2.819078],[-19.562966,-2.954423],[-19.042022,-3.000000],[-18.708240,-3.037608],[-18.391196,-3.148547],[-18.106787,-3.327253],[-17.869274,-3.564765],[-17.690568,-3.849174],[-17.579630,-4.166219],[-17.542022,-4.500000],[-17.542022,-8.148362],[-17.578226,-8.476885],[-17.680006,-8.791171],[-17.844452,-9.077690],[-18.064483,-9.324106],[-18.330629,-9.519814],[-18.631432,-9.656389],[-18.953944,-9.727950],[-19.284282,-9.731419],[-19.607788,-9.665239],[-20.441067,-9.404600],[-21.248436,-9.072270],[-22.023740,-8.670784],[-22.761068,-8.203201],[-23.454801,-7.673087],[-24.099650,-7.084482],[-24.690700,-6.441872],[-25.223445,-5.750158],[-25.693825,-5.014610],[-26.098252,-4.240837],[-26.433645,-3.434736],[-26.697447,-2.602453],[-26.887647,-1.750332],[-27.002796,-0.884868],[-27.042014,-0.012659],[-27.005004,0.859647],[-26.892047,1.725399],[-26.704005,2.578000],[-26.442311,3.410948],[-26.108960,4.217895],[-25.706492,4.992690],[-25.237977,5.729426],[-24.706985,6.422487],[-24.117564,7.066591],[-23.474207,7.656827],[-22.781818,8.188696],[-22.045676,8.658144],[-21.271391,9.061591],[-20.464866,9.395964],[-19.632250,9.658712],[-18.779888,9.847833],[-17.914280,9.961886],[-17.042022,10.000000],[-4.542022,10.000000],[-4.350680,9.961939],[-4.188468,9.853553],[-4.080082,9.691342],[-4.042022,9.500000],[-4.042022,8.500000],[-3.895575,8.146447],[-3.542022,8.000000],[11.457978,8.000000],[11.811532,8.146447],[11.957978,8.500000],[11.957978,9.500000],[11.996039,9.691342],[12.104425,9.853553],[12.266637,9.961939],[12.457978,10.000000],[24.957978,10.000000],[25.348159,9.961571],[25.723346,9.847759],[26.069119,9.662940],[26.372192,9.414214],[26.620918,9.111141],[26.805738,8.765367],[26.919549,8.390181],[26.957978,8.000000],[26.957978,-8.000000],[26.919549,-8.390181],[26.805738,-8.765367],[26.620918,-9.111141],[26.372192,-9.414214],[26.069119,-9.662940],[25.723346,-9.847759],[25.348159,-9.961571]],paths=[[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124]]);}
module part_R10(part=true,hole=false,block=false)
{
translate([1.407978,-8.800000,1.200000])rotate([0,0,90.000000])m0(part,hole,block,casetop); // RevK:R_0402 R_0402_1005Metric (back)
};
module part_D6(part=true,hole=false,block=false)
{
translate([25.057978,8.200000,1.200000])rotate([0,0,45.000000])m1(part,hole,block,casetop); // D6 (back)
};
module part_R18(part=true,hole=false,block=false)
{
translate([11.357979,-8.600000,1.200000])rotate([0,0,90.000000])m0(part,hole,block,casetop); // RevK:R_0402 R_0402_1005Metric (back)
};
module part_R11(part=true,hole=false,block=false)
{
translate([0.557978,-8.800000,1.200000])rotate([0,0,90.000000])m0(part,hole,block,casetop); // RevK:R_0402 R_0402_1005Metric (back)
};
module part_U3(part=true,hole=false,block=false)
{
translate([16.157978,3.800000,1.200000])m2(part,hole,block,casetop); // U3 (back)
};
module part_R12(part=true,hole=false,block=false)
{
translate([-0.292022,-8.800000,1.200000])rotate([0,0,90.000000])m0(part,hole,block,casetop); // RevK:R_0402 R_0402_1005Metric (back)
};
module part_R13(part=true,hole=false,block=false)
{
translate([-1.142021,-8.800000,1.200000])rotate([0,0,90.000000])m0(part,hole,block,casetop); // RevK:R_0402 R_0402_1005Metric (back)
};
module part_D5(part=true,hole=false,block=false)
{
translate([-4.642021,-4.500000,1.200000])rotate([0,0,90.000000])m1(part,hole,block,casetop); // D6 (back)
};
module part_J2(part=true,hole=false,block=false)
{
};
module part_V1(part=true,hole=false,block=false)
{
};
module part_R15(part=true,hole=false,block=false)
{
translate([15.157978,-8.700000,1.200000])rotate([0,0,90.000000])m0(part,hole,block,casetop); // RevK:R_0402 R_0402_1005Metric (back)
};
module part_R3(part=true,hole=false,block=false)
{
translate([3.107979,-8.800000,1.200000])rotate([0,0,90.000000])m0(part,hole,block,casetop); // RevK:R_0402 R_0402_1005Metric (back)
};
module part_R2(part=true,hole=false,block=false)
{
translate([12.694815,5.630000,1.200000])rotate([0,0,180.000000])m0(part,hole,block,casetop); // RevK:R_0402 R_0402_1005Metric (back)
};
module part_C1(part=true,hole=false,block=false)
{
translate([15.495478,-4.262500,1.200000])rotate([0,0,90.000000])m3(part,hole,block,casetop); // C1 (back)
};
module part_C11(part=true,hole=false,block=false)
{
translate([18.157978,-1.500000,1.200000])rotate([0,0,-90.000000])m4(part,hole,block,casetop); // RevK:C_0402 C_0402_1005Metric (back)
};
module part_U4(part=true,hole=false,block=false)
{
translate([15.757978,8.200000,1.200000])rotate([0,0,180.000000])m2(part,hole,block,casetop); // U3 (back)
};
module part_D4(part=true,hole=false,block=false)
{
translate([-4.642021,4.500000,1.200000])m1(part,hole,block,casetop); // D6 (back)
};
module part_J5(part=true,hole=false,block=false)
{
translate([20.917978,1.800000,1.200000])rotate([0,0,90.000000])translate([0.000000,-2.400000,0.000000])rotate([90.000000,-0.000000,-0.000000])m5(part,hole,block,casetop); // RevK:USB-C-Socket-H CSP-USC16-TR (back)
};
module part_R14(part=true,hole=false,block=false)
{
translate([-1.992022,-8.800000,1.200000])rotate([0,0,90.000000])m0(part,hole,block,casetop); // RevK:R_0402 R_0402_1005Metric (back)
};
module part_R1(part=true,hole=false,block=false)
{
translate([17.407978,5.900000,1.200000])rotate([0,0,180.000000])m0(part,hole,block,casetop); // RevK:R_0402 R_0402_1005Metric (back)
};
module part_D1(part=true,hole=false,block=false)
{
translate([17.157978,-7.400000,1.200000])rotate([0,0,180.000000])m1(part,hole,block,casetop); // D6 (back)
};
module part_C9(part=true,hole=false,block=false)
{
translate([12.582978,4.060000,1.200000])rotate([0,0,-90.000000])m4(part,hole,block,casetop); // RevK:C_0402 C_0402_1005Metric (back)
};
module part_D3(part=true,hole=false,block=false)
{
translate([21.157978,8.600000,1.200000])m6(part,hole,block,casetop); // D3 (back)
};
module part_D2(part=true,hole=false,block=false)
{
translate([14.457978,1.700000,1.200000])m7(part,hole,block,casetop); // D2 (back)
};
module part_PCB1(part=true,hole=false,block=false)
{
};
module part_R7(part=true,hole=false,block=false)
{
translate([17.857979,0.700000,1.200000])m0(part,hole,block,casetop); // RevK:R_0402 R_0402_1005Metric (back)
};
module part_C3(part=true,hole=false,block=false)
{
translate([13.857979,-0.500000,1.200000])rotate([0,0,180.000000])m8(part,hole,block,casetop); // RevK:C_0603 C_0603_1608Metric (back)
};
module part_R5(part=true,hole=false,block=false)
{
translate([20.457978,-3.700000,1.200000])m0(part,hole,block,casetop); // RevK:R_0402 R_0402_1005Metric (back)
};
module part_C2(part=true,hole=false,block=false)
{
translate([12.457978,1.100000,1.200000])rotate([0,0,-90.000000])m4(part,hole,block,casetop); // RevK:C_0402 C_0402_1005Metric (back)
};
module part_C4(part=true,hole=false,block=false)
{
translate([16.057978,-8.700000,1.200000])rotate([0,0,-90.000000])m4(part,hole,block,casetop); // RevK:C_0402 C_0402_1005Metric (back)
};
module part_R6(part=true,hole=false,block=false)
{
translate([21.257978,7.100000,1.200000])rotate([0,0,180.000000])m0(part,hole,block,casetop); // RevK:R_0402 R_0402_1005Metric (back)
};
module part_C10(part=true,hole=false,block=false)
{
translate([23.057978,7.100000,1.200000])rotate([0,0,180.000000])m4(part,hole,block,casetop); // RevK:C_0402 C_0402_1005Metric (back)
};
module part_U5(part=true,hole=false,block=false)
{
translate([13.257978,-8.600000,1.200000])rotate([0,0,180.000000])m9(part,hole,block,casetop); // U5 (back)
};
module part_J1(part=true,hole=false,block=false)
{
translate([22.466978,-4.975000,1.200000])rotate([0,0,180.000000])translate([0.000000,1.200000,0.000000])rotate([-0.000000,-0.000000,180.000000])m10(part,hole,block,casetop); // RevK:1.25T-2PWT (Molex 532610271) Molex_PicoBlade_53261-0271_1x02-1MP_P1.25mm_Horizontal (back)
};
module part_Q2(part=true,hole=false,block=false)
{
translate([16.257978,0.700000,1.200000])rotate([0,0,180.000000])m11(part,hole,block,casetop); // Q2 (back)
};
module part_C16(part=true,hole=false,block=false)
{
translate([13.007978,7.700000,1.200000])rotate([0,0,90.000000])m12(part,hole,block,casetop); // RevK:C_0805 C_0805_2012Metric (back)
};
module part_C6(part=true,hole=false,block=false)
{
translate([-6.042022,4.500000,1.200000])rotate([0,0,-90.000000])m4(part,hole,block,casetop); // RevK:C_0402 C_0402_1005Metric (back)
};
module part_R9(part=true,hole=false,block=false)
{
translate([2.257978,-8.800000,1.200000])rotate([0,0,90.000000])m0(part,hole,block,casetop); // RevK:R_0402 R_0402_1005Metric (back)
};
module part_C5(part=true,hole=false,block=false)
{
translate([-6.042022,-4.500000,1.200000])rotate([0,0,-90.000000])m4(part,hole,block,casetop); // RevK:C_0402 C_0402_1005Metric (back)
};
module part_R8(part=true,hole=false,block=false)
{
translate([17.757978,-3.000000,1.200000])m0(part,hole,block,casetop); // RevK:R_0402 R_0402_1005Metric (back)
};
module part_SW2(part=true,hole=false,block=false)
{
translate([-7.542022,0.000000,1.200000])rotate([0,0,90.000000])m13(part,hole,block,casetop); // SW2 (back)
};
module part_U6(part=true,hole=false,block=false)
{
translate([3.957978,0.000000,1.200000])m14(part,hole,block,casetop); // U6 (back)
};
module part_C7(part=true,hole=false,block=false)
{
translate([13.657978,3.300000,1.200000])rotate([0,0,90.000000])m4(part,hole,block,casetop); // RevK:C_0402 C_0402_1005Metric (back)
};
// Parts to go on PCB (top)
module parts_top(part=false,hole=false,block=false){
part_R10(part,hole,block);
part_D6(part,hole,block);
part_R18(part,hole,block);
part_R11(part,hole,block);
part_U3(part,hole,block);
part_R12(part,hole,block);
part_R13(part,hole,block);
part_D5(part,hole,block);
part_J2(part,hole,block);
part_V1(part,hole,block);
part_R15(part,hole,block);
part_R3(part,hole,block);
part_R2(part,hole,block);
part_C1(part,hole,block);
part_C11(part,hole,block);
part_U4(part,hole,block);
part_D4(part,hole,block);
part_J5(part,hole,block);
part_R14(part,hole,block);
part_R1(part,hole,block);
part_D1(part,hole,block);
part_C9(part,hole,block);
part_D3(part,hole,block);
part_D2(part,hole,block);
part_PCB1(part,hole,block);
part_R7(part,hole,block);
part_C3(part,hole,block);
part_R5(part,hole,block);
part_C2(part,hole,block);
part_C4(part,hole,block);
part_R6(part,hole,block);
part_C10(part,hole,block);
part_U5(part,hole,block);
part_J1(part,hole,block);
part_Q2(part,hole,block);
part_C16(part,hole,block);
part_C6(part,hole,block);
part_R9(part,hole,block);
part_C5(part,hole,block);
part_R8(part,hole,block);
part_SW2(part,hole,block);
part_U6(part,hole,block);
part_C7(part,hole,block);
}

parts_top=12;
module part_J4(part=true,hole=false,block=false)
{
translate([4.007978,-0.750000,0.000000])rotate([0,0,180.000000])rotate([180,0,0])m15(part,hole,block,casebottom); // J4
};
module part_C8(part=true,hole=false,block=false)
{
translate([-6.042022,5.500000,0.000000])rotate([0,0,180.000000])rotate([180,0,0])m4(part,hole,block,casebottom); // RevK:C_0402 C_0402_1005Metric
};
module part_C13(part=true,hole=false,block=false)
{
translate([-8.542022,-5.750000,0.000000])rotate([0,0,180.000000])rotate([180,0,0])m4(part,hole,block,casebottom); // RevK:C_0402 C_0402_1005Metric
};
module part_U2(part=true,hole=false,block=false)
{
translate([-7.042022,-8.000000,0.000000])rotate([0,0,-90.000000])rotate([180,0,0])m16(part,hole,block,casebottom); // U2
};
module part_V2(part=true,hole=false,block=false)
{
};
module part_J3(part=true,hole=false,block=false)
{
};
module part_U1(part=true,hole=false,block=false)
{
translate([-7.042022,8.000000,0.000000])rotate([0,0,90.000000])rotate([180,0,0])m16(part,hole,block,casebottom); // U2
};
// Parts to go on PCB (bottom)
module parts_bottom(part=false,hole=false,block=false){
part_J4(part,hole,block);
part_C8(part,hole,block);
part_C13(part,hole,block);
part_U2(part,hole,block);
part_V2(part,hole,block);
part_J3(part,hole,block);
part_U1(part,hole,block);
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
{ // C1
if(part)
{
	b(0,0,0,3.5,2.8,1.9);
}
}

module m4(part=false,hole=false,block=false,height)
{ // RevK:C_0402 C_0402_1005Metric
// 0402 Capacitor
if(part)
{
	b(0,0,0,1.0,0.5,1); // Chip
	b(0,0,0,1.5,0.65,0.2); // Pad size
}
}

module m5(part=false,hole=false,block=false,height)
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

module m6(part=false,hole=false,block=false,height)
{ // D3
// SOD-123 Diode
if(part)
{
	b(0,0,0,2.85,1.8,1.35); // part
	b(0,0,0,4.2,1.2,0.7); // pads
}
}

module m7(part=false,hole=false,block=false,height)
{ // D2
// DFN1006-2L
if(part)
{
	b(0,0,0,1.0,0.6,0.45); // Chip
}
}

module m8(part=false,hole=false,block=false,height)
{ // RevK:C_0603 C_0603_1608Metric
// 0603 Capacitor
if(part)
{
	b(0,0,0,1.6,0.8,1); // Chip
	b(0,0,0,1.6,0.95,0.2); // Pad size
}
}

module m9(part=false,hole=false,block=false,height)
{ // U5
if(part)
{
	b(0,0,0,1.15,2.0,1.1);
	b(0,0,0,2.1,2.0,0.6);
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
{ // SW2
if(part)
{
	b(0,0,0,6,6,2);
}
if(hole)
{
	b(0,0,1,6.5,6.5,height);
}
if(block)
{
	b(0,0,7,7,height);
}
}

module m14(part=false,hole=false,block=false,height)
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

module m15(part=false,hole=false,block=false,height)
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

module m16(part=false,hole=false,block=false,height)
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

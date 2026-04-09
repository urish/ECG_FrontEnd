v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 280 -250 830 0 {flags=graph,unlocked


ypos1=0
ypos2=2

subdivy=1
unity=1



subdivx=8
node="\\"out db20()\\"
\\"outpl db20()\\""
color="4 5"
dataset=0
unitx=1
logx=1
logy=0

sweep=""
rawfile=$netlist_dir/OTA_FoldedCascode_AC1.raw
sim_type=ac


y2=90




divx=8

y1=-20

divy=10
x2=8
x1=0}
B 2 830 -840 1380 -520 {flags=graph,unlocked


ypos1=0
ypos2=2

subdivy=1
unity=1
x1=0





dataset=0
unitx=1
logx=0
logy=0
divx=5
hilight_wave=-1
rawfile=$netlist_dir/OTA_FoldedCascode_AC1.raw
sim_type=tran
subdivx=3

color="4 5"
node="OUT
OUTPL"

y1=0.8
x2=0.02


divy=10
y2=0.98}
B 2 280 -500 830 -250 {flags=graph,unlocked
rawfile=$netlist_dir/OTA_FoldedCascode_AC1.raw
sim_type=ac
y1=-176.66665
y2=223.33335
ypos1=0
ypos2=2

subdivy=1
unity=1



subdivx=8
node="ph(out) 180-
ph(outpl) 180-"
color="4 4 5 5"
dataset=0
unitx=1
logx=1
logy=0
divx=8
sweep=""

x1=0

x2=8
divy=20}
B 2 280 -840 830 -520 {flags=graph,unlocked


ypos1=0
ypos2=2
divy=10
subdivy=1
unity=1
x1=0





dataset=0
unitx=1
logx=0
logy=0
divx=5
hilight_wave=-1
rawfile=$netlist_dir/OTA_FoldedCascode_AC1.raw
sim_type=tran
subdivx=3





x2=0.02




color="6 4"
node="in+
in-"

y1=0.8998
y2=0.9002}
N -1110 -250 -1110 -230 {
lab=IN+}
N -1110 -170 -1110 -150 {
lab=#net1}
N -1110 -90 -1110 -70 {
lab=GND}
N -30 -280 -30 -260 {
lab=OUT}
N -30 -200 -30 -160 {
lab=GND}
N -1350 -100 -1350 -70 {
lab=GND}
N -1350 -190 -1350 -160 {
lab=VDD}
N -210 -710 -180 -710 {
lab=VDD}
N -180 -770 -180 -710 {
lab=VDD}
N -210 -690 -160 -690 {
lab=GND}
N -160 -690 -130 -690 {
lab=GND}
N -130 -770 -130 -690 {
lab=GND}
N -560 -710 -510 -710 {
lab=IN-}
N -600 -690 -510 -690 {
lab=IN+}
N -210 -340 -180 -340 {
lab=VDD}
N -180 -390 -180 -340 {
lab=VDD}
N -210 -320 -130 -320 {
lab=GND}
N -130 -390 -130 -320 {
lab=GND}
N -210 -300 -70 -300 {
lab=OUT}
N -210 -670 -80 -670 {
lab=OUTPL}
N -70 -300 80 -300 {
lab=OUT}
N -30 -300 -30 -280 {
lab=OUT}
N -30 -610 -30 -590 {
lab=OUTPL}
N -30 -530 -30 -490 {
lab=GND}
N -30 -630 -30 -610 {
lab=OUTPL}
N -80 -670 90 -670 {
lab=OUTPL}
N -30 -670 -30 -630 {
lab=OUTPL}
N -400 -390 -400 -370 {
lab=Vb}
N -370 -420 -370 -370 {
lab=Vc2}
N -350 -460 -350 -370 {
lab=Vc1}
N -330 -490 -330 -370 {
lab=Vc}
N -400 -760 -400 -740 {
lab=Vb}
N -370 -790 -370 -740 {
lab=Vc2}
N -350 -830 -350 -740 {
lab=Vc1}
N -330 -860 -330 -740 {
lab=Vc}
N -600 -710 -560 -710 {
lab=IN-}
N -560 -340 -510 -340 {
lab=IN-}
N -600 -320 -510 -320 {
lab=IN+}
N -600 -340 -560 -340 {
lab=IN-}
N -920 -250 -920 -230 {
lab=IN-}
N -920 -170 -920 -150 {
lab=#net2}
N -920 -90 -920 -70 {
lab=GND}
N -1080 -1280 -1080 -1260 {
lab=VDD}
N -1080 -1110 -1080 -1080 {
lab=GND}
N -1080 -1200 -1080 -1170 {
lab=Vb}
N -1080 -1190 -1050 -1190 {
lab=Vb}
N -1110 -1230 -1100 -1230 {
lab=GND}
N -1130 -1230 -1130 -1100 {
lab=GND}
N -1110 -1100 -1080 -1100 {
lab=GND}
N -1110 -1140 -1100 -1140 {
lab=GND}
N -1130 -1230 -1110 -1230 {
lab=GND}
N -1130 -1140 -1110 -1140 {
lab=GND}
N -1130 -1100 -1110 -1100 {
lab=GND}
N -840 -1280 -840 -1260 {
lab=VDD}
N -840 -1110 -840 -1080 {
lab=GND}
N -840 -1200 -840 -1170 {
lab=Vc}
N -840 -1190 -810 -1190 {
lab=Vc}
N -870 -1230 -860 -1230 {
lab=GND}
N -890 -1230 -890 -1100 {
lab=GND}
N -870 -1100 -840 -1100 {
lab=GND}
N -870 -1140 -860 -1140 {
lab=GND}
N -890 -1230 -870 -1230 {
lab=GND}
N -890 -1140 -870 -1140 {
lab=GND}
N -890 -1100 -870 -1100 {
lab=GND}
N -590 -1280 -590 -1260 {
lab=VDD}
N -590 -1110 -590 -1080 {
lab=GND}
N -590 -1200 -590 -1170 {
lab=Vc1}
N -590 -1190 -560 -1190 {
lab=Vc1}
N -620 -1230 -610 -1230 {
lab=GND}
N -640 -1230 -640 -1100 {
lab=GND}
N -620 -1100 -590 -1100 {
lab=GND}
N -620 -1140 -610 -1140 {
lab=GND}
N -640 -1230 -620 -1230 {
lab=GND}
N -640 -1140 -620 -1140 {
lab=GND}
N -640 -1100 -620 -1100 {
lab=GND}
N -360 -1280 -360 -1260 {
lab=VDD}
N -360 -1110 -360 -1080 {
lab=GND}
N -360 -1200 -360 -1170 {
lab=Vc2}
N -360 -1190 -330 -1190 {
lab=Vc2}
N -390 -1230 -380 -1230 {
lab=GND}
N -410 -1230 -410 -1100 {
lab=GND}
N -390 -1100 -360 -1100 {
lab=GND}
N -390 -1140 -380 -1140 {
lab=GND}
N -410 -1230 -390 -1230 {
lab=GND}
N -410 -1140 -390 -1140 {
lab=GND}
N -410 -1100 -390 -1100 {
lab=GND}
C {devices/launcher.sym} 1000 -320 0 0 {name=h1
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/simulator_commands_shown.sym} -1420 -690 0 0 {name=COMMANDS1
simulator=ngspice
only_toplevel=false 
value="
.option reltol=1e-5
+  abstol=1e-14 savecurrents
.control
  set wr_vecnames
  save all
  op
  remzerovec 
  write OTA_FoldedCascode_AC1.raw

  set appendwrite
  ac dec 10 1 1e9
  remzerovec
  write OTA_FoldedCascode_AC1.raw

  tran 10u 20m
  write OTA_FoldedCascode_AC1.raw
  
  noise v(out) VbiasR1 dec 10 0.05 100
  remzerovec
  write OTA_FoldedCascode_AC1.raw
  setplot noise1
  plot inoise_spectrum

.endc
"}
C {devices/launcher.sym} 1000 -380 0 0 {name=h3
descr="Netlist & sim" 
tclcommand="xschem netlist; xschem simulate"}
C {devices/launcher.sym} 1000 -210 0 0 {name=h4 
descr="Load/unload
AC waveforms" 
tclcommand="
xschem raw_read $netlist_dir/OTA_FoldedCascode_AC1.raw ac
"
}
C {devices/launcher.sym} 1000 -270 0 0 {name=h2 
descr="Load/unload
TRAN waveforms" 
tclcommand="
xschem raw_read $netlist_dir/OTA_FoldedCascode_AC1.raw tran
"
}
C {sky130_fd_pr/corner.sym} -1510 -740 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/lab_pin.sym} -1110 -250 0 0 {name=p14 sig_type=std_logic lab=IN+}
C {devices/vsource.sym} -1110 -200 0 0 {name=VbiasR1 value="0 ac 1 0
+ sin(0 100u 50 0 0 0)"}
C {devices/lab_pin.sym} -1110 -70 0 1 {name=p3 sig_type=std_logic lab=GND}
C {devices/vsource.sym} -1110 -120 0 0 {name=V2 value=0.9 savecurrent=false}
C {devices/lab_wire.sym} -30 -160 0 0 {name=p30 sig_type=std_logic lab=GND}
C {sky130_fd_pr/cap_mim_m3_1.sym} -30 -230 0 0 {name=C3 model=cap_mim_m3_1 W=25 L=20 MF=1 spiceprefix=X}
C {devices/vsource.sym} -1350 -130 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/lab_pin.sym} -1350 -190 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -600 -690 0 0 {name=p2 sig_type=std_logic lab=IN+}
C {devices/lab_pin.sym} -180 -770 0 0 {name=p11 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -130 -770 0 0 {name=p12 sig_type=std_logic lab=GND
value=0}
C {devices/lab_pin.sym} -180 -390 0 0 {name=p13 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -130 -390 0 0 {name=p15 sig_type=std_logic lab=GND
value=0}
C {devices/lab_wire.sym} -30 -490 0 0 {name=p7 sig_type=std_logic lab=GND}
C {sky130_fd_pr/cap_mim_m3_1.sym} -30 -560 0 0 {name=C1 model=cap_mim_m3_1 W=25 L=20 MF=1 spiceprefix=X}
C {OFCB.sym} -360 -280 0 0 {name=x1}
C {OFCB.sym} -360 -650 0 0 {name=x2
name=x2
schematic=OFCB_parax.sim
spice_sym_def="tcleval(.include [file normalize ../mag/OFCB.sim.spice])"
tclcommand="textwindow [file normalize ../mag/OFCB.sim.spice]"}
C {devices/lab_pin.sym} -400 -390 0 1 {name=p5 sig_type=std_logic lab=Vb}
C {devices/lab_pin.sym} -370 -420 0 1 {name=p6 sig_type=std_logic lab=Vc2}
C {devices/lab_pin.sym} -350 -460 0 1 {name=p18 sig_type=std_logic lab=Vc1}
C {devices/lab_pin.sym} -330 -490 0 1 {name=p19 sig_type=std_logic lab=Vc}
C {devices/lab_pin.sym} -400 -760 0 1 {name=p20 sig_type=std_logic lab=Vb}
C {devices/lab_pin.sym} -370 -790 0 1 {name=p21 sig_type=std_logic lab=Vc2}
C {devices/lab_pin.sym} -350 -830 0 1 {name=p22 sig_type=std_logic lab=Vc1}
C {devices/lab_pin.sym} -330 -860 0 1 {name=p23 sig_type=std_logic lab=Vc}
C {devices/lab_pin.sym} 80 -300 0 1 {name=p28 sig_type=std_logic lab=OUT}
C {devices/lab_pin.sym} 90 -670 0 1 {name=p32 sig_type=std_logic lab=OUTPL}
C {devices/lab_pin.sym} -600 -320 0 0 {name=p4 sig_type=std_logic lab=IN+}
C {devices/lab_pin.sym} -600 -340 0 0 {name=p16 sig_type=std_logic lab=IN-}
C {devices/lab_pin.sym} -600 -710 0 0 {name=p17 sig_type=std_logic lab=IN-}
C {devices/lab_pin.sym} -920 -250 0 0 {name=p24 sig_type=std_logic lab=IN-}
C {devices/vsource.sym} -920 -200 0 0 {name=VbiasR2 value="0 ac 1 180
+ sin(0 100u 50 0 0 180)"
lab=IN-}
C {devices/lab_pin.sym} -920 -70 0 1 {name=p25 sig_type=std_logic lab=GND}
C {devices/vsource.sym} -920 -120 0 0 {name=V4 value=0.9 savecurrent=false
lab=IN-}
C {devices/gnd.sym} -1350 -70 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} -1080 -1080 0 0 {name=p38 sig_type=std_logic lab=GND}
C {devices/lab_wire.sym} -1080 -1280 0 0 {name=p39 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} -1080 -1230 0 0 {name=R2
L=5
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} -1080 -1140 0 0 {name=R3
L=13.2
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {devices/lab_wire.sym} -840 -1080 0 0 {name=p1 sig_type=std_logic lab=GND}
C {devices/lab_wire.sym} -840 -1280 0 0 {name=p26 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} -840 -1230 0 0 {name=R4
L=5
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} -840 -1140 0 0 {name=R5
L=3.07
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {devices/lab_wire.sym} -590 -1080 0 0 {name=p37 sig_type=std_logic lab=GND}
C {devices/lab_wire.sym} -590 -1280 0 0 {name=p40 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} -590 -1230 0 0 {name=R6
L=5
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} -590 -1140 0 0 {name=R7
L=13.2
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {devices/lab_wire.sym} -360 -1080 0 0 {name=p42 sig_type=std_logic lab=GND}
C {devices/lab_wire.sym} -360 -1280 0 0 {name=p43 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} -360 -1230 0 0 {name=R8
L=5
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} -360 -1140 0 0 {name=R9
L=1.4
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} -1050 -1190 0 1 {name=p34 sig_type=std_logic lab=Vb}
C {devices/lab_pin.sym} -810 -1190 0 1 {name=p36 sig_type=std_logic lab=Vc}
C {devices/lab_pin.sym} -560 -1190 0 1 {name=p41 sig_type=std_logic lab=Vc1}
C {devices/lab_pin.sym} -330 -1190 0 1 {name=p44 sig_type=std_logic lab=Vc2}

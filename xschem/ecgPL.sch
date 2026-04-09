v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 710 -680 1260 -360 {flags=graph,unlocked


ypos1=0
ypos2=2
divy=10
subdivy=1
unity=1
x1=0.0044837964





dataset=0
unitx=1
logx=0
logy=0
divx=5
hilight_wave=-1
rawfile=$netlist_dir/ecgPL.raw
sim_type=tran
subdivx=3










color="6 4"
node="in1
in2"

y1=0.8
y2=1
x2=0.2044838}
B 2 1260 -680 1810 -360 {flags=graph,unlocked


ypos1=0
ypos2=2

subdivy=1
unity=1






dataset=0
unitx=1
logx=0
logy=0
divx=5
hilight_wave=-1
rawfile=$netlist_dir/ecgPL.raw
sim_type=tran
subdivx=3





x2=0.2


divy=10

color="4 5"
node="out
outPL"
y1=0.77
y2=0.98
x1=-5.67e-09
linewidth_mult=2.3}
B 2 1810 -680 2360 -430 {flags=graph,unlocked


ypos1=0
ypos2=2

subdivy=1
unity=1



subdivx=8
node="\\"out db20()\\"
\\"outPL db20()\\""
color="4 5"
dataset=0
unitx=1
logx=1
logy=0

sweep=""
rawfile=$netlist_dir/ecgPL.raw
sim_type=ac


y2=48








divy=11

x1=-2
y1=-70
x2=8
divx=8
linewidth_mult=2}
B 2 710 -320 1260 0 {flags=graph,unlocked


ypos1=0
ypos2=2
divy=10
subdivy=1
unity=1
<<<<<<< HEAD
x1=-5.7e-09
=======
x1=-5.7e-09
>>>>>>> 5bb81df (save)





dataset=0
unitx=1
logx=0
logy=0
divx=5
hilight_wave=-1
rawfile=$netlist_dir/ecgPL.raw
sim_type=tran
subdivx=3





x2=0.2








y2=1.6
y1=0.2
color="5 6"
node="OUTDRL
OUTDRLPL"}
B 2 1810 -430 2360 -180 {flags=graph,unlocked


ypos1=0
ypos2=2

subdivy=1
unity=1



subdivx=8
node="\\"outdrl db20()\\"
\\"outdrlPL db20()\\""
color="4 5"
dataset=0
unitx=1
logx=1
logy=0

sweep=""
rawfile=$netlist_dir/ecgPL.raw
sim_type=ac


<<<<<<< HEAD
y2=30
=======
y2=30
>>>>>>> 5bb81df (save)




divx=8



divy=11

x1=-2
<<<<<<< HEAD
y1=-70
=======
y1=-10
>>>>>>> 5bb81df (save)
x2=8
linewidth_mult=2}
B 2 1810 -180 2360 70 {flags=graph,unlocked
rawfile=$netlist_dir/ecgPL.raw
sim_type=ac
y1=-200
y2=200
ypos1=0
ypos2=2

subdivy=1
unity=1



subdivx=8
node="ph(outdrl)
ph(outdrlPL)"
color="4 5"
dataset=0
unitx=1
logx=1
logy=0
divx=8
sweep=""

x1=-2.3274297
divy=8
x2=7.6725703
linewidth_mult=2}
B 2 2360 -680 2910 -430 {flags=graph,unlocked
rawfile=$netlist_dir/ecgPL.raw
sim_type=ac
y1=-200
y2=200
ypos1=0
ypos2=2

subdivy=1
unity=1



subdivx=8
node="ph(out)
ph(outPL)"
color="4 5"
dataset=0
unitx=1
logx=1
logy=0
divx=8
sweep=""

x1=-2
divy=8
x2=8
linewidth_mult=2}
N -870 -440 -870 -400 {
lab=GND}
N -970 -420 -970 -390 {
lab=GND}
N -970 -510 -970 -480 {
lab=VDD}
N -670 -500 -670 -480 {
lab=IN1}
N -670 -420 -670 -400 {
lab=#net1}
N -290 -420 -290 -400 {
lab=GND}
N -500 -500 -500 -480 {
lab=IN2}
N -500 -420 -500 -400 {
lab=#net1}
N -670 -400 -670 -350 {
lab=#net1}
N -670 -350 -590 -350 {
lab=#net1}
N -590 -350 -590 -320 {
lab=#net1}
N -590 -350 -500 -350 {
lab=#net1}
N -500 -400 -500 -350 {
lab=#net1}
N -290 -500 -290 -480 {
lab=ref}
N -290 -490 -250 -490 {
lab=ref}
N -230 -70 -210 -70 {
lab=IN1}
N -230 -30 -210 -30 {
lab=IN2}
N -230 -10 -210 -10 {
lab=ref}
N -310 -10 -230 -10 {
lab=ref}
N -280 -50 -280 -10 {
lab=ref}
N -280 -50 -210 -50 {
lab=ref}
N 90 -50 130 -50 {
lab=GND}
N 90 -70 130 -70 {
lab=VDD}
N 90 -30 130 -30 {
lab=OUT}
N 90 -10 130 -10 {
lab=OUTDRL}
N -230 100 -210 100 {
lab=IN1}
N -230 140 -210 140 {
lab=IN2}
N -230 160 -210 160 {
lab=ref}
N -310 160 -230 160 {
lab=ref}
N -280 120 -210 120 {
lab=ref}
N 90 120 130 120 {
lab=GND}
N 90 100 130 100 {
lab=VDD}
N 90 140 130 140 {
lab=OUTPL}
N 90 160 130 160 {
lab=OUTDRLPL}
N -590 -260 -590 -250 {
lab=OUTDRL}
N -590 -250 -570 -250 {
lab=OUTDRL}
N -280 120 -280 160 {
lab=ref}
C {ecg.sym} -60 -40 0 0 {name=x1}
C {devices/iopin.sym} -870 -500 0 0 {name=p4 lab=VDD}
C {devices/iopin.sym} -870 -470 0 0 {name=p5 lab=GND}
C {devices/vsource.sym} -970 -450 0 0 {name=V3 value=1.8 savecurrent=false}
C {devices/gnd.sym} -870 -400 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} -870 -440 0 1 {name=p6 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} -970 -390 0 1 {name=p11 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} -970 -510 0 0 {name=p12 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -670 -500 0 0 {name=p1 sig_type=std_logic lab=IN1}
C {devices/vsource.sym} -670 -450 0 0 {name=VbiasR1 value="0 ac 1 0
+ sin(0 500u 10 0 0 0)"}
C {devices/vsource.sym} -290 -450 0 0 {name=V2 value=0.9 savecurrent=false}
C {devices/lab_pin.sym} -500 -500 0 0 {name=p7 sig_type=std_logic lab=IN2}
C {devices/vsource.sym} -500 -450 0 0 {name=VbiasR2 value="0 ac 1 180
+ sin(0 500u 10 0 0 180)"
lab=IN2}
C {devices/vsource.sym} -590 -290 0 0 {name=VbiasR3 value="0 ac 1 0
+ sin(0 100m 50 10u 0 0)"
}
C {devices/lab_pin.sym} -250 -490 0 1 {name=p8 sig_type=std_logic lab=ref}
C {devices/lab_pin.sym} -290 -400 0 1 {name=p41 sig_type=std_logic lab=GND}
C {devices/simulator_commands_shown.sym} -1670 -300 0 0 {name=COMMANDS1
simulator=ngspice
only_toplevel=false 
value="
.option reltol=1e-3
+ abstol=1e-12
+ pivotrel=0.1
.control
  set wr_vecnames
  set trtol=7         
  set abstol=1n       
  set chgtol=1e-12

  save all
  op
  remzerovec 
  write ecgPL.raw

  set appendwrite
  ac dec 1000 0.01 100Meg
  remzerovec
  write ecgPL.raw

  tran 1m 200m
  write ecgPL.raw

  set appendwrite
  noise v(outN) VbiasR1 dec 10 0.05 1e3
  remzerovec
  write ecgPL.raw
  
  setplot ac1 
  wrdata PostLayout_ac_ecg_DRL.txt db(v(out)),db(v(outpl)),db(v(outdrl)),db(v(outdrlpl)),ph(v(outdrl)),ph(v(outdrlpl))
  setplot tran1 
  wrdata PostLayout_tran_ecg_DRL.txt v(out),v(outpl),v(outdrl),v(outdrlpl)
  
  
.endc
"}
C {sky130_fd_pr/corner.sym} -1780 -320 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/lab_pin.sym} -230 -70 0 0 {name=p2 sig_type=std_logic lab=IN1}
C {devices/lab_pin.sym} -230 -30 0 0 {name=p3 sig_type=std_logic lab=IN2}
C {devices/lab_pin.sym} -310 -10 0 0 {name=p9 sig_type=std_logic lab=ref}
C {devices/lab_pin.sym} 130 -50 0 1 {name=p10 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 130 -70 0 1 {name=p13 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 130 -30 0 1 {name=p14 sig_type=std_logic lab=OUT}
C {devices/lab_pin.sym} 130 -10 0 1 {name=p15 sig_type=std_logic lab=OUTDRL}
C {ecg.sym} -60 130 0 0 {name=x2
schematic=ecg_parax.sim
spice_sym_def="tcleval(.include [file normalize ../mag/ecg.sim.spice])"
tclcommand="textwindow [file normalize ../mag/ecg.sim.spice]"
}
C {devices/lab_pin.sym} -230 100 0 0 {name=p16 sig_type=std_logic lab=IN1}
C {devices/lab_pin.sym} -230 140 0 0 {name=p17 sig_type=std_logic lab=IN2}
C {devices/lab_pin.sym} -310 160 0 0 {name=p18 sig_type=std_logic lab=ref}
C {devices/lab_pin.sym} 130 120 0 1 {name=p19 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 130 100 0 1 {name=p20 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 130 140 0 1 {name=p21 sig_type=std_logic lab=OUTPL}
C {devices/lab_pin.sym} 130 160 0 1 {name=p22 sig_type=std_logic lab=OUTDRLPL}
C {devices/launcher.sym} 540 -60 0 0 {name=h5
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/launcher.sym} 540 -95 0 0 {name=h6
descr="Netlist & sim" 
tclcommand="xschem netlist; xschem simulate"}
C {devices/lab_pin.sym} -570 -250 0 1 {name=p23 sig_type=std_logic lab=OUTDRL}

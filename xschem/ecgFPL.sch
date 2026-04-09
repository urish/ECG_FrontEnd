v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 690 -680 1240 -360 {flags=graph,unlocked


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
rawfile=$netlist_dir/ecgFPL.raw
sim_type=tran
subdivx=3










color="6 4"
node="in1
in2"

y1=0.78
y2=0.98
x2=0.2044838}
B 2 1240 -680 1790 -360 {flags=graph,unlocked


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
rawfile=$netlist_dir/ecgFPL.raw
sim_type=tran
subdivx=3





x2=0.2


divy=10

color="4 5"
node="out
outPL"
y1=0.791
y2=1.001
x1=-5.67e-09
linewidth_mult=2.3}
B 2 1790 -680 2340 -430 {flags=graph,unlocked


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
rawfile=$netlist_dir/ecgFPL.raw
sim_type=ac


y2=69.454535








divy=11

x1=-2
y1=-48.54546
x2=8
divx=8
linewidth_mult=2}
B 2 690 -320 1240 0 {flags=graph,unlocked


ypos1=0
ypos2=2
divy=10
subdivy=1
unity=1
<<<<<<< HEAD
x1=-0.010000006
=======
x1=-5.7e-09
>>>>>>> 5bb81df (save)





dataset=0
unitx=1
logx=0
logy=0
divx=5
hilight_wave=-1
rawfile=$netlist_dir/ecgFPL.raw
sim_type=tran
subdivx=3





x2=0.19








y2=1.6
y1=0.2
color="5 6"
node="OUTDRL
OUTDRLPL"}
B 2 1790 -430 2340 -180 {flags=graph,unlocked


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
rawfile=$netlist_dir/ecgFPL.raw
sim_type=ac


<<<<<<< HEAD
y2=20.909094
=======
y2=30
>>>>>>> 5bb81df (save)




divx=8



divy=11

x1=-2
<<<<<<< HEAD
y1=-79.090911
=======
y1=-10
>>>>>>> 5bb81df (save)
x2=8
linewidth_mult=2}
B 2 1790 -180 2340 70 {flags=graph,unlocked
rawfile=$netlist_dir/ecgFPL.raw
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
B 2 2340 -680 2890 -430 {flags=graph,unlocked
rawfile=$netlist_dir/ecgFPL.raw
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
N -890 -440 -890 -400 {
lab=GND}
N -990 -420 -990 -390 {
lab=GND}
N -990 -510 -990 -480 {
lab=VDD}
N -690 -500 -690 -480 {
lab=IN1}
N -690 -420 -690 -400 {
lab=#net1}
N -310 -420 -310 -400 {
lab=GND}
N -520 -500 -520 -480 {
lab=IN2}
N -520 -420 -520 -400 {
lab=#net1}
N -690 -400 -690 -350 {
lab=#net1}
N -690 -350 -610 -350 {
lab=#net1}
N -610 -350 -610 -320 {
lab=#net1}
N -610 -350 -520 -350 {
lab=#net1}
N -520 -400 -520 -350 {
lab=#net1}
N -310 -500 -310 -480 {
lab=ref}
N -310 -490 -270 -490 {
lab=ref}
N -610 -260 -610 -250 {
lab=OUTDRL}
N -610 -250 -590 -250 {
lab=OUTDRL}
N -170 -240 -150 -240 {
lab=IN2}
N -170 -200 -150 -200 {
lab=IN1}
N -170 -180 -150 -180 {
lab=ref}
N -250 -180 -170 -180 {
lab=ref}
N -220 -220 -220 -180 {
lab=ref}
N -220 -220 -150 -220 {
lab=ref}
N 150 -220 190 -220 {
lab=VDD}
N 150 -240 190 -240 {
lab=OUT}
N 150 -200 190 -200 {
lab=GND}
N 150 -180 190 -180 {
lab=OUTDRL}
N -170 -70 -150 -70 {
lab=IN2}
N -170 -30 -150 -30 {
lab=IN1}
N -170 -10 -150 -10 {
lab=ref}
N -250 -10 -170 -10 {
lab=ref}
N -220 -50 -150 -50 {
lab=ref}
N 150 -50 190 -50 {
lab=VDD}
N 150 -70 190 -70 {
lab=OUTPL}
N 150 -30 190 -30 {
lab=GND}
N 150 -10 190 -10 {
lab=OUTDRLPL}
N -220 -50 -220 -10 {
lab=ref}
C {devices/iopin.sym} -890 -500 0 0 {name=p4 lab=VDD}
C {devices/iopin.sym} -890 -470 0 0 {name=p5 lab=GND}
C {devices/vsource.sym} -990 -450 0 0 {name=V3 value=1.8 savecurrent=false}
C {devices/gnd.sym} -890 -400 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} -890 -440 0 1 {name=p6 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} -990 -390 0 1 {name=p11 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} -990 -510 0 0 {name=p12 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -690 -500 0 0 {name=p1 sig_type=std_logic lab=IN1}
C {devices/vsource.sym} -690 -450 0 0 {name=VbiasR1 value="0 ac 1 0
+ sin(0 500u 10 0 0 0)"}
C {devices/vsource.sym} -310 -450 0 0 {name=V2 value=0.9 savecurrent=false}
C {devices/lab_pin.sym} -520 -500 0 0 {name=p7 sig_type=std_logic lab=IN2}
C {devices/vsource.sym} -520 -450 0 0 {name=VbiasR2 value="0 ac 1 180
+ sin(0 500u 10 0 0 180)"
lab=IN2}
C {devices/vsource.sym} -610 -290 0 0 {name=VbiasR3 value="0 ac 1 0
+ sin(0 100m 50 10u 0 0)"
}
C {devices/lab_pin.sym} -270 -490 0 1 {name=p8 sig_type=std_logic lab=ref}
C {devices/lab_pin.sym} -310 -400 0 1 {name=p41 sig_type=std_logic lab=GND}
C {devices/simulator_commands_shown.sym} -1690 -300 0 0 {name=COMMANDS1
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
  write ecgFPL.raw

  set appendwrite
  ac dec 1000 0.01 100Meg
  remzerovec
  write ecgFPL.raw

  tran 1m 200m
  write ecgFPL.raw

  set appendwrite
  noise v(outN) VbiasR1 dec 10 0.05 1e3
  remzerovec
  write ecgFPL.raw
  
  #setplot ac1 
  #wrdata PostLayout_ac_ecg_DRL.txt db(v(out)),db(v(outpl)),db(v(outdrl)),db(v(outdrlpl)),ph(v(outdrl)),ph(v(outdrlpl))
  #setplot tran1 
  #wrdata PostLayout_tran_ecg_DRL.txt v(out),v(outpl),v(outdrl),v(outdrlpl)
  
  
.endc
"}
C {sky130_fd_pr/corner.sym} -1800 -320 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/launcher.sym} 520 -60 0 0 {name=h5
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/launcher.sym} 520 -95 0 0 {name=h6
descr="Netlist & sim" 
tclcommand="xschem netlist; xschem simulate"}
C {devices/lab_pin.sym} -590 -250 0 1 {name=p23 sig_type=std_logic lab=OUTDRL}
C {devices/lab_pin.sym} -170 -200 0 0 {name=p2 sig_type=std_logic lab=IN1}
C {devices/lab_pin.sym} -170 -240 0 0 {name=p3 sig_type=std_logic lab=IN2}
C {devices/lab_pin.sym} -250 -180 0 0 {name=p9 sig_type=std_logic lab=ref}
C {devices/lab_pin.sym} 190 -200 0 1 {name=p10 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 190 -220 0 1 {name=p13 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 190 -240 0 1 {name=p14 sig_type=std_logic lab=OUT}
C {devices/lab_pin.sym} 190 -180 0 1 {name=p15 sig_type=std_logic lab=OUTDRL}
C {devices/lab_pin.sym} -170 -30 0 0 {name=p16 sig_type=std_logic lab=IN1}
C {devices/lab_pin.sym} -170 -70 0 0 {name=p17 sig_type=std_logic lab=IN2}
C {devices/lab_pin.sym} -250 -10 0 0 {name=p18 sig_type=std_logic lab=ref}
C {devices/lab_pin.sym} 190 -30 0 1 {name=p19 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 190 -50 0 1 {name=p20 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 190 -70 0 1 {name=p21 sig_type=std_logic lab=OUTPL}
C {devices/lab_pin.sym} 190 -10 0 1 {name=p22 sig_type=std_logic lab=OUTDRLPL}
C {ecgF.sym} 0 -210 0 0 {name=x1}
C {ecgF.sym} 0 -40 0 0 {name=x2
schematic=ecgF_parax.sim
spice_sym_def="tcleval(.include [file normalize ../mag/ecgF.sim.spice])"
tclcommand="textwindow [file normalize ../mag/ecgF.sim.spice]"}

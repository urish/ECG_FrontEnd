v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -830 -380 -830 -350 {
lab=GND}
N -830 -470 -830 -440 {
lab=VDD}
N -830 -160 -830 -140 {
lab=VSS}
N -730 -160 -730 -140 {
lab=VSS}
N -830 -240 -830 -220 {
lab=IN+}
N -730 -240 -730 -220 {
lab=IN-}
N -700 -380 -700 -350 {
lab=GND}
N -700 -470 -700 -440 {
lab=VSS}
N 40 -330 40 -310 {
lab=Vb}
N 70 -360 70 -310 {
lab=Vc2}
N 90 -400 90 -310 {
lab=Vc1}
N 110 -430 110 -310 {
lab=Vc}
N 40 -100 40 -80 {
lab=Vb}
N 70 -130 70 -80 {
lab=Vc2}
N 90 -170 90 -80 {
lab=Vc1}
N 110 -200 110 -80 {
lab=Vc}
N -80 -50 -70 -50 {
lab=IN-}
N -80 -30 -70 -30 {
lab=IN+}
N 230 -280 260 -280 {
lab=VDD}
N 230 -260 260 -260 {
lab=GND}
N 230 -240 260 -240 {
lab=OUT}
N 230 -50 260 -50 {
lab=VDD}
N 230 -30 260 -30 {
lab=GND}
N 230 -10 260 -10 {
lab=OUTPL}
N -80 -280 -70 -280 {
lab=IN-}
N -80 -260 -70 -260 {
lab=IN+}
N 490 -470 490 -450 {
lab=VDD}
N 490 -300 490 -270 {
lab=GND}
N 490 -390 490 -360 {
lab=Vb}
N 490 -380 520 -380 {
lab=Vb}
N 460 -420 470 -420 {
lab=GND}
N 440 -420 440 -290 {
lab=GND}
N 460 -290 490 -290 {
lab=GND}
N 460 -330 470 -330 {
lab=GND}
N 440 -420 460 -420 {
lab=GND}
N 440 -330 460 -330 {
lab=GND}
N 440 -290 460 -290 {
lab=GND}
N 730 -470 730 -450 {
lab=VDD}
N 730 -300 730 -270 {
lab=GND}
N 730 -390 730 -360 {
lab=Vc}
N 730 -380 760 -380 {
lab=Vc}
N 700 -420 710 -420 {
lab=GND}
N 680 -420 680 -290 {
lab=GND}
N 700 -290 730 -290 {
lab=GND}
N 700 -330 710 -330 {
lab=GND}
N 680 -420 700 -420 {
lab=GND}
N 680 -330 700 -330 {
lab=GND}
N 680 -290 700 -290 {
lab=GND}
N 980 -470 980 -450 {
lab=VDD}
N 980 -300 980 -270 {
lab=GND}
N 980 -390 980 -360 {
lab=Vc1}
N 980 -380 1010 -380 {
lab=Vc1}
N 950 -420 960 -420 {
lab=GND}
N 930 -420 930 -290 {
lab=GND}
N 950 -290 980 -290 {
lab=GND}
N 950 -330 960 -330 {
lab=GND}
N 930 -420 950 -420 {
lab=GND}
N 930 -330 950 -330 {
lab=GND}
N 930 -290 950 -290 {
lab=GND}
N 1210 -470 1210 -450 {
lab=VDD}
N 1210 -300 1210 -270 {
lab=GND}
N 1210 -390 1210 -360 {
lab=Vc2}
N 1210 -380 1240 -380 {
lab=Vc2}
N 1180 -420 1190 -420 {
lab=GND}
N 1160 -420 1160 -290 {
lab=GND}
N 1180 -290 1210 -290 {
lab=GND}
N 1180 -330 1190 -330 {
lab=GND}
N 1160 -420 1180 -420 {
lab=GND}
N 1160 -330 1180 -330 {
lab=GND}
N 1160 -290 1180 -290 {
lab=GND}
C {devices/simulator_commands_shown.sym} -1620 -590 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands

.options savecurrents

.control
   set wr_vecnames

   op
   remzerovec 
   write OTA_FoldedCascode1.raw
   set appendwrite
   dc Vbias 0.899 0.901 0.00001 
   *dc Vbias 0.899 0.901 0.0001
   *dc Vbias 0 1.8 0.01 
   *remzerovec 
   plot v(out),v(outpl)
   plot deriv(v(out)),deriv(v(outpl))
   
   write OTA_FoldedCascode1.raw
   wrdata PostLayout_DC_OFCB.txt v(out),v(outpl),deriv(v(out)),deriv(v(outpl))
.endc
.end
" }
C {sky130_fd_pr/corner.sym} -1730 -610 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/vsource.sym} -830 -410 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/lab_pin.sym} -830 -350 0 1 {name=p9 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} -830 -470 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -830 -190 0 0 {name=Vbias value=0.9 savecurrent=false}
C {devices/vsource.sym} -730 -190 0 0 {name=VbiasR value=0.9 savecurrent=false}
C {devices/lab_pin.sym} -730 -240 0 0 {name=p13 sig_type=std_logic lab=IN-}
C {devices/lab_pin.sym} -830 -240 0 0 {name=p14 sig_type=std_logic lab=IN+}
C {devices/launcher.sym} -500 -200 0 0 {name=h1
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/lab_pin.sym} -830 -140 0 1 {name=p11 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -730 -140 0 1 {name=p12 sig_type=std_logic lab=VSS}
C {devices/launcher.sym} -500 -230 0 0 {name=h3
descr="Netlist & sim" 
tclcommand="xschem netlist; xschem simulate"}
C {devices/vsource.sym} -700 -410 0 0 {name=V2 value=0 savecurrent=false}
C {devices/lab_pin.sym} -700 -350 0 1 {name=p8 sig_type=std_logic lab=GND
value=0}
C {devices/lab_pin.sym} -700 -470 0 0 {name=p18 sig_type=std_logic lab=VSS
value=0}
C {OFCB.sym} 80 -220 0 0 {name=x1}
C {OFCB.sym} 80 10 0 0 {name=x2
name=x2
schematic=OFCB_parax.sim
spice_sym_def="tcleval(.include [file normalize ../mag/OFCB.sim.spice])"
tclcommand="textwindow [file normalize ../mag/OFCB.sim.spice]"}
C {devices/lab_pin.sym} 40 -330 0 1 {name=p1 sig_type=std_logic lab=Vb}
C {devices/lab_pin.sym} 70 -360 0 1 {name=p2 sig_type=std_logic lab=Vc2}
C {devices/lab_pin.sym} 90 -400 0 1 {name=p7 sig_type=std_logic lab=Vc1}
C {devices/lab_pin.sym} 110 -430 0 1 {name=p3 sig_type=std_logic lab=Vc}
C {devices/lab_pin.sym} 40 -100 0 1 {name=p4 sig_type=std_logic lab=Vb}
C {devices/lab_pin.sym} 70 -130 0 1 {name=p5 sig_type=std_logic lab=Vc2}
C {devices/lab_pin.sym} 90 -170 0 1 {name=p6 sig_type=std_logic lab=Vc1}
C {devices/lab_pin.sym} 110 -200 0 1 {name=p15 sig_type=std_logic lab=Vc}
C {devices/lab_pin.sym} -80 -30 0 0 {name=p17 sig_type=std_logic lab=IN+}
C {devices/lab_pin.sym} -80 -50 0 0 {name=p21 sig_type=std_logic lab=IN-}
C {devices/lab_pin.sym} 260 -280 0 1 {name=p22 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 260 -260 0 1 {name=p23 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 260 -240 0 1 {name=p24 sig_type=std_logic lab=OUT}
C {devices/lab_pin.sym} 260 -50 0 1 {name=p25 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 260 -30 0 1 {name=p27 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 260 -10 0 1 {name=p28 sig_type=std_logic lab=OUTPL}
C {devices/lab_pin.sym} -80 -260 0 0 {name=p29 sig_type=std_logic lab=IN+}
C {devices/lab_pin.sym} -80 -280 0 0 {name=p30 sig_type=std_logic lab=IN-}
C {devices/lab_wire.sym} 490 -270 0 0 {name=p38 sig_type=std_logic lab=GND}
C {devices/lab_wire.sym} 490 -470 0 0 {name=p39 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 490 -420 0 0 {name=R2
L=5
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 490 -330 0 0 {name=R3
L=13.2
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {devices/lab_wire.sym} 730 -270 0 0 {name=p16 sig_type=std_logic lab=GND}
C {devices/lab_wire.sym} 730 -470 0 0 {name=p26 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 730 -420 0 0 {name=R4
L=5
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 730 -330 0 0 {name=R5
L=3.07
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {devices/lab_wire.sym} 980 -270 0 0 {name=p37 sig_type=std_logic lab=GND}
C {devices/lab_wire.sym} 980 -470 0 0 {name=p40 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 980 -420 0 0 {name=R6
L=5
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 980 -330 0 0 {name=R7
L=13.2
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {devices/lab_wire.sym} 1210 -270 0 0 {name=p42 sig_type=std_logic lab=GND}
C {devices/lab_wire.sym} 1210 -470 0 0 {name=p43 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 1210 -420 0 0 {name=R8
L=5
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 1210 -330 0 0 {name=R9
L=1.4
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} 520 -380 0 1 {name=p34 sig_type=std_logic lab=Vb}
C {devices/lab_pin.sym} 760 -380 0 1 {name=p36 sig_type=std_logic lab=Vc}
C {devices/lab_pin.sym} 1010 -380 0 1 {name=p41 sig_type=std_logic lab=Vc1}
C {devices/lab_pin.sym} 1240 -380 0 1 {name=p44 sig_type=std_logic lab=Vc2}

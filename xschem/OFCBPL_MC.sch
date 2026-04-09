v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -1220 -140 -1220 -120 {
lab=IN+}
N -1220 -60 -1220 -40 {
lab=ref}
N -1220 20 -1220 40 {
lab=GND}
N -1330 -20 -1330 20 {
lab=GND}
N -1430 0 -1430 30 {
lab=GND}
N -1430 -90 -1430 -60 {
lab=VDD}
N -1430 -390 -1430 -370 {
lab=VDD}
N -1430 -220 -1430 -190 {
lab=GND}
N -1430 -310 -1430 -280 {
lab=Vb}
N -1430 -300 -1400 -300 {
lab=Vb}
N -1460 -340 -1450 -340 {
lab=GND}
N -1480 -340 -1480 -210 {
lab=GND}
N -1460 -210 -1430 -210 {
lab=GND}
N -1460 -250 -1450 -250 {
lab=GND}
N -1480 -340 -1460 -340 {
lab=GND}
N -1480 -250 -1460 -250 {
lab=GND}
N -1480 -210 -1460 -210 {
lab=GND}
N -1190 -390 -1190 -370 {
lab=VDD}
N -1190 -220 -1190 -190 {
lab=GND}
N -1190 -310 -1190 -280 {
lab=Vc}
N -1190 -300 -1160 -300 {
lab=Vc}
N -1220 -340 -1210 -340 {
lab=GND}
N -1240 -340 -1240 -210 {
lab=GND}
N -1220 -210 -1190 -210 {
lab=GND}
N -1220 -250 -1210 -250 {
lab=GND}
N -1240 -340 -1220 -340 {
lab=GND}
N -1240 -250 -1220 -250 {
lab=GND}
N -1240 -210 -1220 -210 {
lab=GND}
N -940 -390 -940 -370 {
lab=VDD}
N -940 -220 -940 -190 {
lab=GND}
N -940 -310 -940 -280 {
lab=Vc1}
N -940 -300 -910 -300 {
lab=Vc1}
N -970 -340 -960 -340 {
lab=GND}
N -990 -340 -990 -210 {
lab=GND}
N -970 -210 -940 -210 {
lab=GND}
N -970 -250 -960 -250 {
lab=GND}
N -990 -340 -970 -340 {
lab=GND}
N -990 -250 -970 -250 {
lab=GND}
N -990 -210 -970 -210 {
lab=GND}
N -710 -390 -710 -370 {
lab=VDD}
N -710 -220 -710 -190 {
lab=GND}
N -710 -310 -710 -280 {
lab=Vc2}
N -710 -300 -680 -300 {
lab=Vc2}
N -740 -340 -730 -340 {
lab=GND}
N -760 -340 -760 -210 {
lab=GND}
N -740 -210 -710 -210 {
lab=GND}
N -740 -250 -730 -250 {
lab=GND}
N -760 -340 -740 -340 {
lab=GND}
N -760 -250 -740 -250 {
lab=GND}
N -760 -210 -740 -210 {
lab=GND}
N -1040 -140 -1040 -120 {
lab=IN-}
N -1040 -60 -1040 -40 {
lab=#net1}
N -1040 20 -1040 40 {
lab=GND}
N -1220 -50 -1200 -50 {
lab=ref}
N -190 -100 -190 -80 {
lab=Vb}
N -160 -130 -160 -80 {
lab=Vc2}
N -140 -170 -140 -80 {
lab=Vc1}
N -120 -200 -120 -80 {
lab=Vc}
N -190 130 -190 150 {
lab=Vb}
N -160 100 -160 150 {
lab=Vc2}
N -140 60 -140 150 {
lab=Vc1}
N -120 30 -120 150 {
lab=Vc}
N -310 180 -300 180 {
lab=IN-}
N -310 200 -300 200 {
lab=IN+}
N -0 -50 30 -50 {
lab=VDD}
N 0 -30 30 -30 {
lab=GND}
N 0 -10 30 -10 {
lab=OUT}
N 0 180 30 180 {
lab=VDD}
N 0 200 30 200 {
lab=GND}
N 0 220 30 220 {
lab=OUTPL}
N -310 -50 -300 -50 {
lab=IN-}
N -310 -30 -300 -30 {
lab=IN+}
C {OFCB.sym} -150 10 0 0 {name=x1}
C {OFCB.sym} -150 240 0 0 {name=x2
name=x2
schematic=OFCB_parax.sim
spice_sym_def="tcleval(.include [file normalize ../mag/OFCB.sim.spice])"
tclcommand="textwindow [file normalize ../mag/OFCB.sim.spice]"}
C {devices/simulator_commands_shown.sym} -1940 -190 0 0 {name=COMMANDS1
simulator=ngspice
only_toplevel=false 
value="
.control
    set wr_vecnames
    set wr_singlescale

    * 1. Pulizia iniziale del file per evitare di appendere a vecchie simulazioni
    shell rm -f mcAC_out.txt

    * Impostazioni per il salvataggio pulito
    set appendwrite

    let mc_runs = 200
    let run = 1

    dowhile run <= mc_runs
        * 2. FORZA IL CAMBIO DEL PARAMETRO CASUALE
        * Impostiamo il seed basandoci sul numero del run. 
        * Questo garantisce che 'reset' peschi valori diversi ogni volta.
        set seed = $&run
        
        * 3. RESETTA LA RETE
        * Ricarica i parametri gauss() o unif() definiti nei modelli/istanze
        reset
        
        * 4. ESECUZIONE SIMULAZIONE AC
        * L'offset di 0.9V deve essere già presente nel tuo generatore V_in (DC 0.9)
        ac dec 10 1 1e9
        
        * 5. SALVATAGGIO DATI
        * Calcoliamo il vettore e lo scriviamo. 'appendwrite' lo mette in coda.
        let gain_db = db(v(OUTPL))
        wrdata mcAC_out.txt gain_db
        
        * 6. PULIZIA E AVANZAMENTO
        * Distrugge il plot attuale per non saturare la RAM
        destroy all
        
        * Feedback a video (non scrive su file, serve a te per monitorare)
        echo 
        
        let run = run + 1
    end
.endc
"}
C {sky130_fd_pr/corner.sym} -2060 -210 0 0 {name=CORNER only_toplevel=true corner=tt_mm}
C {devices/lab_pin.sym} -1220 -140 0 0 {name=p14 sig_type=std_logic lab=IN+}
C {devices/vsource.sym} -1220 -90 0 0 {name=VbiasR1 value="0 ac 1 0
+ sin(0 100u 50 0 0 0)"}
C {devices/lab_pin.sym} -1220 40 0 1 {name=p3 sig_type=std_logic lab=GND}
C {devices/vsource.sym} -1220 -10 0 0 {name=V2 value=0.9 savecurrent=false}
C {devices/iopin.sym} -1330 -80 0 0 {name=p4 lab=VDD}
C {devices/iopin.sym} -1330 -50 0 0 {name=p5 lab=GND}
C {devices/vsource.sym} -1430 -30 0 0 {name=V3 value=1.8 savecurrent=false}
C {devices/gnd.sym} -1330 20 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} -1330 -20 0 1 {name=p6 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} -1430 30 0 1 {name=p11 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} -1430 -90 0 0 {name=p12 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -1430 -190 0 0 {name=p38 sig_type=std_logic lab=GND}
C {devices/lab_wire.sym} -1430 -390 0 0 {name=p39 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} -1430 -340 0 0 {name=R2
L=5
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} -1430 -250 0 0 {name=R3
L=13.2
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {devices/lab_wire.sym} -1190 -190 0 0 {name=p16 sig_type=std_logic lab=GND}
C {devices/lab_wire.sym} -1190 -390 0 0 {name=p26 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} -1190 -340 0 0 {name=R4
L=5
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} -1190 -250 0 0 {name=R5
L=3.07
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {devices/lab_wire.sym} -940 -190 0 0 {name=p37 sig_type=std_logic lab=GND}
C {devices/lab_wire.sym} -940 -390 0 0 {name=p40 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} -940 -340 0 0 {name=R6
L=5
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} -940 -250 0 0 {name=R7
L=13.2
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {devices/lab_wire.sym} -710 -190 0 0 {name=p42 sig_type=std_logic lab=GND}
C {devices/lab_wire.sym} -710 -390 0 0 {name=p43 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} -710 -340 0 0 {name=R8
L=5
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} -710 -250 0 0 {name=R9
L=1.4
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} -1400 -300 0 1 {name=p34 sig_type=std_logic lab=Vb}
C {devices/lab_pin.sym} -1160 -300 0 1 {name=p36 sig_type=std_logic lab=Vc}
C {devices/lab_pin.sym} -910 -300 0 1 {name=p41 sig_type=std_logic lab=Vc1}
C {devices/lab_pin.sym} -680 -300 0 1 {name=p44 sig_type=std_logic lab=Vc2}
C {devices/lab_pin.sym} -1040 -140 0 0 {name=p18 sig_type=std_logic lab=IN-}
C {devices/vsource.sym} -1040 -90 0 0 {name=VbiasR2 value="0 ac 1 180
+ sin(0 100u 50 0 0 180)"
lab=IN-}
C {devices/lab_pin.sym} -1040 40 0 1 {name=p19 sig_type=std_logic lab=GND}
C {devices/vsource.sym} -1040 -10 0 0 {name=V1 value=0.9 savecurrent=false
lab=IN-}
C {devices/lab_pin.sym} -1200 -50 0 1 {name=p20 sig_type=std_logic lab=ref}
C {devices/launcher.sym} -670 -10 0 0 {name=h3
descr="Netlist & sim" 
tclcommand="xschem netlist; xschem simulate"}
C {devices/lab_pin.sym} -190 -100 0 1 {name=p1 sig_type=std_logic lab=Vb}
C {devices/lab_pin.sym} -160 -130 0 1 {name=p2 sig_type=std_logic lab=Vc2}
C {devices/lab_pin.sym} -140 -170 0 1 {name=p7 sig_type=std_logic lab=Vc1}
C {devices/lab_pin.sym} -120 -200 0 1 {name=p8 sig_type=std_logic lab=Vc}
C {devices/lab_pin.sym} -190 130 0 1 {name=p9 sig_type=std_logic lab=Vb}
C {devices/lab_pin.sym} -160 100 0 1 {name=p10 sig_type=std_logic lab=Vc2}
C {devices/lab_pin.sym} -140 60 0 1 {name=p13 sig_type=std_logic lab=Vc1}
C {devices/lab_pin.sym} -120 30 0 1 {name=p15 sig_type=std_logic lab=Vc}
C {devices/lab_pin.sym} -310 200 0 0 {name=p17 sig_type=std_logic lab=IN+}
C {devices/lab_pin.sym} -310 180 0 0 {name=p21 sig_type=std_logic lab=IN-}
C {devices/lab_pin.sym} 30 -50 0 1 {name=p22 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 30 -30 0 1 {name=p23 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 30 -10 0 1 {name=p24 sig_type=std_logic lab=OUT}
C {devices/lab_pin.sym} 30 180 0 1 {name=p25 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 30 200 0 1 {name=p27 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 30 220 0 1 {name=p28 sig_type=std_logic lab=OUTPL}
C {devices/lab_pin.sym} -310 -30 0 0 {name=p29 sig_type=std_logic lab=IN+}
C {devices/lab_pin.sym} -310 -50 0 0 {name=p30 sig_type=std_logic lab=IN-}
C {devices/launcher.sym} -690 20 0 0 {name=h5
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}

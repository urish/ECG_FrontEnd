v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 2240 -80 2260 -80 {
lab=IN2}
N 2240 -40 2260 -40 {
lab=IN1}
N 2240 -20 2260 -20 {
lab=ref}
N 2160 -20 2240 -20 {
lab=ref}
N 2190 -60 2190 -20 {
lab=ref}
N 2190 -60 2260 -60 {
lab=ref}
N 2560 -60 2600 -60 {
lab=VDD}
N 2560 -80 2600 -80 {
lab=OUT}
N 2560 -40 2600 -40 {
lab=GND}
N 2560 -20 2600 -20 {
lab=OUTDRL}
N 2240 90 2260 90 {
lab=IN2}
N 2240 130 2260 130 {
lab=IN1}
N 2240 150 2260 150 {
lab=ref}
N 2160 150 2240 150 {
lab=ref}
N 2190 110 2260 110 {
lab=ref}
N 2560 110 2600 110 {
lab=VDD}
N 2560 90 2600 90 {
lab=OUTPL}
N 2560 130 2600 130 {
lab=GND}
N 2560 150 2600 150 {
lab=OUTDRLPL}
N 2190 110 2190 150 {
lab=ref}
N 1470 -330 1470 -290 {
lab=GND}
N 1370 -310 1370 -280 {
lab=GND}
N 1370 -400 1370 -370 {
lab=VDD}
C {devices/lab_pin.sym} 2240 -40 0 0 {name=p2 sig_type=std_logic lab=IN1}
C {devices/lab_pin.sym} 2240 -80 0 0 {name=p3 sig_type=std_logic lab=IN2}
C {devices/lab_pin.sym} 2160 -20 0 0 {name=p9 sig_type=std_logic lab=ref}
C {devices/lab_pin.sym} 2600 -40 0 1 {name=p10 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 2600 -60 0 1 {name=p13 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 2600 -80 0 1 {name=p14 sig_type=std_logic lab=OUT}
C {devices/lab_pin.sym} 2600 -20 0 1 {name=p15 sig_type=std_logic lab=OUTDRL}
C {devices/lab_pin.sym} 2240 130 0 0 {name=p16 sig_type=std_logic lab=IN1}
C {devices/lab_pin.sym} 2240 90 0 0 {name=p17 sig_type=std_logic lab=IN2}
C {devices/lab_pin.sym} 2160 150 0 0 {name=p18 sig_type=std_logic lab=ref}
C {devices/lab_pin.sym} 2600 130 0 1 {name=p19 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 2600 110 0 1 {name=p20 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 2600 90 0 1 {name=p21 sig_type=std_logic lab=OUTPL}
C {devices/lab_pin.sym} 2600 150 0 1 {name=p22 sig_type=std_logic lab=OUTDRLPL}
C {devices/iopin.sym} 1470 -390 0 0 {name=p4 lab=VDD}
C {devices/iopin.sym} 1470 -360 0 0 {name=p5 lab=GND}
C {devices/vsource.sym} 1370 -340 0 0 {name=V3 value=1.8 savecurrent=false}
C {devices/gnd.sym} 1470 -290 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} 1470 -330 0 1 {name=p6 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 1370 -280 0 1 {name=p11 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 1370 -400 0 0 {name=p12 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/corner.sym} 500 -450 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/launcher.sym} 1430 -120 0 0 {name=h1
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/launcher.sym} 1430 -170 0 0 {name=h2
descr="Netlist & sim" 
tclcommand="xschem netlist; xschem simulate"}
C {devices/simulator_commands_shown.sym} 370 -110 0 0 {name=COMMANDS1
simulator=ngspice
only_toplevel=false 
value=" * --- DEFINIZIONE GENERATORI (Aggiornata secondo schema 2026-02-13) ---

* 1. Riferimento DC stabile a 0.9V (Nodo 'ref')
V1 ref GND 0.9

* 2. Generatore di MODO COMUNE (50Hz) connesso tra il punto comune e out_drl
* Nello schema, il morsetto negativo è su out_drl e il positivo va verso gli ingressi
VbiasR3 common_node outdrl dc 0 sin(0 100m 50 10u 0 0)

* 3. Braccio Positivo (ECG / 2) riferito al common_node
VbiasR1 IN1 common_node dc 0 pwl( 
+ 0.00 0.00000 0.05 0.00000 0.08 0.00000 0.10 0.00005 0.12 0.000075 
+ 0.15 0.00010 0.18 0.000075 0.22 0.00000 0.28 0.00000 0.29 -0.000025 
+ 0.30 -0.00005 0.31 0.00035 0.32 0.00075 0.33 0.00035 0.34 -0.00010 
+ 0.35 -0.00005 0.36 0.00000 0.40 0.00000 0.48 0.00000 0.52 0.00005 
+ 0.56 0.000125 0.60 0.00015 0.64 0.000125 0.68 0.00005 0.75 0.00000 
+ 1.00 0.00000 )

* 4. Braccio Negativo (ECG / 2 Invertito) riferito al common_node
VbiasR2 IN2 common_node dc 0 pwl( 
+ 0.00 0.00000 0.05 0.00000 0.08 0.00000 0.10 -0.00005 0.12 -0.000075 
+ 0.15 -0.00010 0.18 -0.000075 0.22 0.00000 0.28 0.00000 0.29 0.000025 
+ 0.30 0.00005 0.31 -0.00035 0.32 -0.00075 0.33 -0.00035 0.34 0.00010 
+ 0.35 0.00005 0.36 0.00000 0.40 0.00000 0.48 0.00000 0.52 -0.00005 
+ 0.56 -0.000125 0.60 -0.00015 0.64 -0.000125 0.68 -0.00005 0.75 0.00000 
+ 1.00 0.00000 )

* --- CONTROLLO SIMULAZIONE ---
.control
    * Nota: Assicurati che l'ingresso (+) del tuo OTA DRL sia collegato al nodo 'ref' (0.9V)
    * e l'ingresso (-) al modo comune degli elettrodi.
    set wr_vecnames
    save v(IN1) v(IN2) v(common_node) v(outdrl) v(ref) v(out) v(outpl)
    tran 10u 1.1s 0 1m
    
    * Visualizza come il DRL muove out_drl per annullare il 50Hz nel common_node
    plot v(common_node) v(ref) title 'Modo Comune vs Riferimento 0.9V'
    plot v(out_drl) title 'Uscita Correttiva del DRL'
    plot (v(IN1)-v(IN2)) title 'Segnale ECG Differenziale'
    plot v(out) v(outpl)
    
   
.endc
"}
C {ecgF.sym} 2410 -50 0 0 {name=x1}
C {ecgF.sym} 2410 120 0 0 {name=x2
schematic=ecgF_parax.sim
spice_sym_def="tcleval(.include [file normalize ../mag/ecgF.sim.spice])"
tclcommand="textwindow [file normalize ../mag/ecgF.sim.spice]"}

v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -900 -70 -880 -70 {
lab=IN2}
N -900 -30 -880 -30 {
lab=IN1}
N -900 -10 -880 -10 {
lab=ref}
N -980 -10 -900 -10 {
lab=ref}
N -950 -50 -950 -10 {
lab=ref}
N -950 -50 -880 -50 {
lab=ref}
N -580 -50 -540 -50 {
lab=GND}
N -580 -70 -540 -70 {
lab=VDD}
N -580 -30 -540 -30 {
lab=OUT}
N -580 -10 -540 -10 {
lab=OUTDRL}
N -900 100 -880 100 {
lab=IN2}
N -900 140 -880 140 {
lab=IN1}
N -900 160 -880 160 {
lab=ref}
N -980 160 -900 160 {
lab=ref}
N -950 120 -880 120 {
lab=ref}
N -580 120 -540 120 {
lab=GND}
N -580 100 -540 100 {
lab=VDD}
N -580 140 -540 140 {
lab=OUTPL}
N -580 160 -540 160 {
lab=OUTDRLPL}
N -950 120 -950 160 {
lab=ref}
N -1670 -320 -1670 -280 {
lab=GND}
N -1770 -300 -1770 -270 {
lab=GND}
N -1770 -390 -1770 -360 {
lab=VDD}
C {ecg.sym} -730 -40 0 0 {name=x1}
C {devices/lab_pin.sym} -900 -30 0 0 {name=p2 sig_type=std_logic lab=IN1}
C {devices/lab_pin.sym} -900 -70 0 0 {name=p3 sig_type=std_logic lab=IN2}
C {devices/lab_pin.sym} -980 -10 0 0 {name=p9 sig_type=std_logic lab=ref}
C {devices/lab_pin.sym} -540 -50 0 1 {name=p10 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} -540 -70 0 1 {name=p13 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -540 -30 0 1 {name=p14 sig_type=std_logic lab=OUT}
C {devices/lab_pin.sym} -540 -10 0 1 {name=p15 sig_type=std_logic lab=OUTDRL}
C {ecg.sym} -730 130 0 0 {name=x2
schematic=ecg_parax.sim
spice_sym_def="tcleval(.include [file normalize ../mag/ecg.sim.spice])"
tclcommand="textwindow [file normalize ../mag/ecg.sim.spice]"
}
C {devices/lab_pin.sym} -900 140 0 0 {name=p16 sig_type=std_logic lab=IN1}
C {devices/lab_pin.sym} -900 100 0 0 {name=p17 sig_type=std_logic lab=IN2}
C {devices/lab_pin.sym} -980 160 0 0 {name=p18 sig_type=std_logic lab=ref}
C {devices/lab_pin.sym} -540 120 0 1 {name=p19 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} -540 100 0 1 {name=p20 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -540 140 0 1 {name=p21 sig_type=std_logic lab=OUTPL}
C {devices/lab_pin.sym} -540 160 0 1 {name=p22 sig_type=std_logic lab=OUTDRLPL}
C {devices/iopin.sym} -1670 -380 0 0 {name=p4 lab=VDD}
C {devices/iopin.sym} -1670 -350 0 0 {name=p5 lab=GND}
C {devices/vsource.sym} -1770 -330 0 0 {name=V3 value=1.8 savecurrent=false}
C {devices/gnd.sym} -1670 -280 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} -1670 -320 0 1 {name=p6 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} -1770 -270 0 1 {name=p11 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} -1770 -390 0 0 {name=p12 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/corner.sym} -2640 -440 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/launcher.sym} -1710 -110 0 0 {name=h1
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/launcher.sym} -1710 -160 0 0 {name=h2
descr="Netlist & sim" 
tclcommand="xschem netlist; xschem simulate"}
C {devices/simulator_commands_shown.sym} -2770 -100 0 0 {name=COMMANDS1
simulator=ngspice
only_toplevel=false 
value=" * --- DEFINIZIONE GENERATORI (Aggiornata secondo schema 2026-02-13) ---

* 1. Riferimento DC stabile a 0.9V (Nodo 'ref')
V1 ref GND 0.9

* 2. Generatore di MODO COMUNE (50Hz) connesso tra il punto comune e out_drl
* Nello schema, il morsetto negativo è su out_drl e il positivo va verso gli ingressi
VbiasR3 common_node outdrlpl dc 0 sin(0 100m 50 10u 0 0)

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
    save v(IN1) v(IN2) v(common_node) v(out_drl) v(ref) v(out) v(outpl)
    tran 10u 1.1s 0 1m
    
    * Visualizza come il DRL muove out_drl per annullare il 50Hz nel common_node
    plot v(common_node) v(ref) title 'Modo Comune vs Riferimento 0.9V'
    plot v(out_drl) title 'Uscita Correttiva del DRL'
    plot (v(IN1)-v(IN2)) title 'Segnale ECG Differenziale'
    plot v(out) v(outpl)
    
   
.endc
"}

#!/bin/bash

GERBER_FILES="quadra-to-ztex-B_Cu.gbr quadra-to-ztex-B_Mask.gbr quadra-to-ztex-B_Paste.gbr quadra-to-ztex-B_SilkS.gbr quadra-to-ztex-Edge_Cuts.gbr quadra-to-ztex-F_Cu.gbr quadra-to-ztex-F_Mask.gbr quadra-to-ztex-F_Paste.gbr quadra-to-ztex-F_SilkS.gbr quadra-to-ztex-In1_Cu.gbr quadra-to-ztex-In2_Cu.gbr"

POS_FILES="quadra-to-ztex-bottom.pos quadra-to-ztex-top.pos"

DRL_FILES="quadra-to-ztex-NPTH.drl quadra-to-ztex-PTH.drl quadra-to-ztex-PTH-drl_map.ps quadra-to-ztex-NPTH-drl_map.ps"

FILES="${GERBER_FILES} ${POS_FILES} ${DRL_FILES} top.pdf quadra-to-ztex.d356 quadra-to-ztex.csv"

echo $FILES

KICAD_PCB=quadra-to-ztex.kicad_pcb

ABORT=no
for F in $FILES; do 
    if test \! -f $F || test $KICAD_PCB -nt $F; then
	echo "Regenerate file $F"
	ABORT=yes
    fi
done

if test $ABORT == "yes"; then
    exit -1;
fi

zip quadra-to-ztex.zip $FILES top.jpg bottom.jpg

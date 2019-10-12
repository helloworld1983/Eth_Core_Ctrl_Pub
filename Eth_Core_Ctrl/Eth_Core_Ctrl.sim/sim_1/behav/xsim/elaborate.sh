#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2018.3_AR71948 (64-bit)
#
# Filename    : elaborate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for elaborating the compiled design
#
# Generated by Vivado on Wed Oct 09 22:36:05 PDT 2019
# SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
#
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
#
# usage: elaborate.sh
#
# ****************************************************************************
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
ExecStep xelab -wto d4d814642a5c467ba8d284aa222426d4 --incr --debug typical --relax --mt 8 -L fifo_generator_v13_2_3 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot sim_ETH_CORE_CTRL_behav xil_defaultlib.sim_ETH_CORE_CTRL xil_defaultlib.glbl -log elaborate.log

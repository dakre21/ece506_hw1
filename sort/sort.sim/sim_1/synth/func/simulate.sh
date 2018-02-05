#!/bin/bash -f
xv_path="/opt/Xilinx/Vivado/2017.2"
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
ExecStep $xv_path/bin/xsim sort_TB_func_synth -key {Post-Synthesis:sim_1:Functional:sort_TB} -tclbatch sort_TB.tcl -view /home/dakre/ece506_hw1/sort/waveform_1.wcfg -log simulate.log

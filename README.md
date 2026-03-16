Hi Professor, this GitHub contains all the Verilog files. 

fetch.v is the top-most file that uses: mux, pc, incrementer, instrMem, and ifldLatch. 

The testbench file, FetchTB.v, is used to simulate the fetch part of the pipeline. It starts by resetting, so the program counter starts from 0, then it just keeps on changing based on the program counter. After that, we force it to jump to 5, which it does. 

The simulation results can be more clearly seen in the FetchTB_behav.wcfg file. 


package game2048_pkg;

import uvm_pkg::*;
`include "uvm_macros.svh"

`include "game2048_seq_item.sv"
`include "game2048_config.sv"
`include "game2048_sequence.sv"
  
`include "game2048_sequencer.sv"
`include "game2048_driver.sv"
`include "game2048_inp_monitor.sv"
`include "game2048_out_monitor.sv"

`include "game2048_subscriber.sv"
`include "game2048_scoreboard.sv"

`include "game2048_act_agent.sv"
`include "game2048_pas_agent.sv"

`include "game2048_env.sv"
`include "game2048_test.sv"

endpackage


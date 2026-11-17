class game2048_sequencer extends uvm_sequencer #(game2048_sequence_item);

`uvm_component_utils(game2048_sequencer)

function new(string name = "game2048_sequencer", uvm_component parent);
	super.new(name, parent);
endfunction

endclass


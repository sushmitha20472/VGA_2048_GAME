class game2048_pas_agent extends uvm_agent;

`uvm_component_utils(game2048_pas_agent)

game2048_out_monitor out_mon;

function new(string name="game2048_pas_agent", uvm_component parent=null);
	super.new(name,parent);
endfunction

function void build_phase(uvm_phase phase);
	super.build_phase(phase);

	out_mon=game2048_out_monitor::type_id::create("out_mon",this);

endfunction

endclass


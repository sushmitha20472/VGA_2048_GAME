class game2048_config extends uvm_object;

`uvm_object_utils(game2048_config)

virtual game2048_if vif;

uvm_active_passive_enum input_agent_is_active;
uvm_active_passive_enum output_agent_is_active;

function new(string name="game2048_config");
	super.new(name);
endfunction

endclass


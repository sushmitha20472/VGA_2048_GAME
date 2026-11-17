class game2048_out_monitor extends uvm_monitor;

`uvm_component_utils(game2048_out_monitor)

game2048_config cfg;
virtual game2048_if vif;

uvm_analysis_port #(game2048_sequence_item) ap;

game2048_sequence_item item;

function new(string name = "game2048_out_monitor", uvm_component parent);
	super.new(name, parent);
	ap = new("ap", this);
endfunction

function void build_phase(uvm_phase phase);
	super.build_phase(phase);
	if(!uvm_config_db #(game2048_config)::get(this, "", "cfg", cfg))
		`uvm_fatal("OUT_MON", "Configuration class not found")
endfunction

function void connect_phase(uvm_phase phase);
	super.connect_phase(phase);
	vif = cfg.vif;
endfunction

task run_phase(uvm_phase phase);
	forever
	begin
		
	end
endtask

endclass


class game2048_driver extends uvm_driver #(game2048_sequence_item);

`uvm_component_utils(game2048_driver)

game2048_config cfg;
virtual game2048_if vif;

function new(string name = "game2048_driver", uvm_component parent);
	super.new(name, parent);
endfunction

function void build_phase(uvm_phase phase);
	super.build_phase(phase);
	if(!uvm_config_db #(game2048_config)::get(this, "", "cfg", cfg))
		`uvm_fatal("DRIVER", "Configuration class not found")
endfunction

function void connect_phase(uvm_phase phase);
	super.connect_phase(phase);
	vif = cfg.vif;
endfunction

task run_phase(uvm_phase phase);
	forever
	begin
		seq_item_port.get_next_item(req);

		seq_item_port.item_done();
	end
endtask

endclass


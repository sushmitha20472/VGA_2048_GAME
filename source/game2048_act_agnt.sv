class game2048_act_agent extends uvm_agent;

`uvm_component_utils(game2048_act_agent)

game2048_inp_monitor inp_mon;
game2048_driver dri;
game2048_sequencer sqnr;

function new(string name="game2048_act_agent", uvm_component parent=null);
	super.new(name,parent);
endfunction

function void build_phase(uvm_phase phase);
	super.build_phase(phase);

	if(get_is_active()==UVM_ACTIVE)
	begin
		dri=game2048_driver::type_id::create("dri",this);
		sqnr=game2048_sequencer::type_id::create("sqnr",this);
	end

	inp_mon=game2048_inp_monitor::type_id::create("inp_mon",this);

endfunction

function void connect_phase(uvm_phase phase);
	super.connect_phase(phase);

	if(get_is_active()==UVM_ACTIVE)
		dri.seq_item_port.connect(sqnr.seq_item_export);

endfunction

endclass


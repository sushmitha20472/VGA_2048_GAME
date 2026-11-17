class game2048_env extends uvm_env;

`uvm_component_utils(game2048_env)

game2048_act_agent act_agnt;
game2048_pas_agent pas_agnt;
game2048_scoreboard sco;
game2048_subscriber sub;

game2048_config m_cfg;

function new(string name="game2048_env",uvm_component parent=null);
	super.new(name,parent);
endfunction

function void build_phase(uvm_phase phase);
	super.build_phase(phase);

	if(!uvm_config_db #(game2048_config)::get(this,"","game2048_config",m_cfg))
		`uvm_fatal(get_type_name(),"Environment Getting Failed")

	act_agnt=game2048_act_agent::type_id::create("act_agnt",this);
	pas_agnt=game2048_pas_agent::type_id::create("pas_agnt",this);
	sco=game2048_scoreboard::type_id::create("sco",this);
	sub=game2048_subscriber::type_id::create("sub",this);

endfunction

function void connect_phase(uvm_phase phase);
	super.connect_phase(phase);

	act_agnt.inp_mon.ap.connect(sco.exp_fifo.analysis_export);
	pas_agnt.out_mon.ap.connect(sco.act_fifo.analysis_export);
	act_agnt.inp_mon.ap.connect(sub.analysis_export);

endfunction

endclass


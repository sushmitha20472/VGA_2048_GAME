class game2048_scoreboard extends uvm_scoreboard;

`uvm_component_utils(game2048_scoreboard)

uvm_analysis_imp #(game2048_sequence_item, game2048_scoreboard) inp_imp;
uvm_analysis_imp #(game2048_sequence_item, game2048_scoreboard) out_imp;

game2048_sequence_item inp_item;
game2048_sequence_item out_item;

function new(string name = "game2048_scoreboard", uvm_component parent);
	super.new(name, parent);
	inp_imp = new("inp_imp", this);
	out_imp = new("out_imp", this);
endfunction

function void write(game2048_sequence_item item);
endfunction

endclass


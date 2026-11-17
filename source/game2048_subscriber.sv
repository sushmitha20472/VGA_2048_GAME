class game2048_subscriber extends uvm_subscriber #(game2048_sequence_item);

`uvm_component_utils(game2048_subscriber)

game2048_sequence_item item;

function new(string name = "game2048_subscriber", uvm_component parent);
	super.new(name, parent);
endfunction

function void write(game2048_sequence_item t);
	item = t;
endfunction

endclass


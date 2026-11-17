class game2048_seq_item extends uvm_sequence_item;

rand bit rst_n;
rand bit ena;
rand bit [7:0] ui_in;
rand bit [7:0] uio_in;

bit [7:0] uo_out;
bit [7:0] uio_out;
bit [7:0] uio_oe;

`uvm_object_utils_begin(game2048_seq_item)
	`uvm_field_int(rst_n, UVM_ALL_ON)
	`uvm_field_int(ena, UVM_ALL_ON)
	`uvm_field_int(ui_in, UVM_ALL_ON)
	`uvm_field_int(uio_in, UVM_ALL_ON)
`uvm_object_utils_end

function new(string name = "game2048_seq_item");
	super.new(name);
endfunction

endclass

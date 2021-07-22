.PHONY: sim
sim: sv2v_out.v
	verilator -cc $< -Wall -Wno-fatal -CFLAGS "-std=c++11 -Wall -DTOPLEVEL_NAME=soc_domain -g -O0"

sv2v_out.v: pickled.sv
	sv2v $< > $@

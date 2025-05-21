synth:
	yosys < run_yosys.scr

v2act:
	v2act -C bool -o tmp.act -l ${ACT_HOME}/act/std/cells_sync.act -n stdgates yosys_out.v
	echo "import \"cells_sync.act\";\n\n" | cat - tmp.act > synth.act
	rm tmp.act


actsim:
	actsim synth.act tb_buffer_with_source_sink < actsim.scr > actsim.out
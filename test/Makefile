default:
	$(shell vessel bin)/moc $(shell vessel sources) -wasi-system-api -o Test.wasm sha3.test.mo && wasmtime Test.wasm
	rm -f Test.wasm

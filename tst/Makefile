TESTS = \
	schifra_reed_solomon_codec_validation \
	schifra_reed_solomon_speed_evaluation \
	;
EXAMPLES = \
	schifra_bitio_example01 \
	schifra_bitio_example02 \
	schifra_erasure_channel_example01 \
	schifra_erasure_channel_example02 \
	schifra_interleaving_example01 \
	schifra_interleaving_example02 \
	schifra_interleaving_example03 \
	schifra_reed_solomon_example01 \
	schifra_reed_solomon_example02 \
	schifra_reed_solomon_example03 \
	schifra_reed_solomon_example04 \
	schifra_reed_solomon_example05 \
	schifra_reed_solomon_example06 \
	schifra_reed_solomon_example07 \
	schifra_reed_solomon_example08 \
	schifra_reed_solomon_file_decoding_example \
	schifra_reed_solomon_file_encoding_example \
	schifra_reed_solomon_file_interleaving_example \
	schifra_reed_solomon_gencodec_example \
	schifra_reed_solomon_product_code_example \
	;
# TODO if build with threads
#	schifra_reed_solomon_threads_example01 \
#	schifra_reed_solomon_threads_example02 \


all: tests examples

tests: $(TESTS)

examples: $(EXAMPLES)

run: tests
	./schifra_reed_solomon_codec_validation
	./schifra_reed_solomon_speed_evaluation

%: %.cpp $(HEADERS)
	$(CXX) $(CXXFLAGS) $< -o $@

schifra_reed_solomon_threads_example01: schifra_reed_solomon_threads_example01.cpp $(HEADERS)
	$(CXX) $(CXXFLAGS) -pthread -lboost_thread $< -o $@

schifra_reed_solomon_threads_example02: schifra_reed_solomon_threads_example02.cpp $(HEADERS)
	$(CXX) $(CXXFLAGS) -pthread -lboost_thread $< -o $@

clean:
	$(RM) *.o *.exe core.* *stackdump *.bak *~

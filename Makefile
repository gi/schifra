#
# **************************************************************************
# *                                                                        *
# *                                Schifra                                 *
# *                Reed-Solomon Error Correcting Code Library              *
# *                                                                        *
# * Release Version 0.0.1                                                  *
# * http://www.schifra.com                                                 *
# * Copyright (c) 2000-2014 Arash Partow, All Rights Reserved.             *
# *                                                                        *
# * The Schifra Reed-Solomon error correcting code library and all its     *
# * components are supplied under the terms of the General Schifra License *
# * agreement. The contents of the Schifra Reed-Solomon error correcting   *
# * code library and all its components may not be copied or disclosed     *
# * except in accordance with the terms of that agreement.                 *
# *                                                                        *
# * URL: http://www.schifra.com/license.html                               *
# *                                                                        *
# **************************************************************************
#

INC              = inc
TST              = tst

COMPILER         = -c++
OPTIMIZATION_OPT = -O3
INCLUDES        += -I$(INC)
OPTIONS          = $(INCLUDES) -ansi -pedantic-errors -Wall -Wextra -Werror -Wno-long-long -lstdc++ $(OPTIMIZATION_OPT)

HPP_SRC+=$(INC)/schifra_galois_field_polynomial.hpp
HPP_SRC+=$(INC)/schifra_galois_field.hpp
HPP_SRC+=$(INC)/schifra_galois_field_element.hpp
HPP_SRC+=$(INC)/schifra_error_processes.hpp
HPP_SRC+=$(INC)/schifra_ecc_traits.hpp
HPP_SRC+=$(INC)/schifra_reed_solomon_block.hpp
HPP_SRC+=$(INC)/schifra_reed_solomon_codec_validator.hpp
HPP_SRC+=$(INC)/schifra_reed_solomon_speed_evaluator.hpp
HPP_SRC+=$(INC)/schifra_reed_solomon_encoder.hpp
HPP_SRC+=$(INC)/schifra_reed_solomon_decoder.hpp
HPP_SRC+=$(INC)/schifra_reed_solomon_file_encoder.hpp
HPP_SRC+=$(INC)/schifra_reed_solomon_file_decoder.hpp
HPP_SRC+=$(INC)/schifra_reed_solomon_product_code.hpp
HPP_SRC+=$(INC)/schifra_sequential_root_generator_polynomial_creator.hpp

BUILDS+=schifra_reed_solomon_codec_validation
BUILDS+=schifra_reed_solomon_speed_evaluation
BUILDS+=schifra_reed_solomon_example01
BUILDS+=schifra_reed_solomon_example02
BUILDS+=schifra_reed_solomon_example03
BUILDS+=schifra_reed_solomon_example04
BUILDS+=schifra_reed_solomon_example05
BUILDS+=schifra_reed_solomon_example06
BUILDS+=schifra_reed_solomon_example07
BUILDS+=schifra_reed_solomon_example08
BUILDS+=schifra_interleaving_example01
BUILDS+=schifra_interleaving_example02
BUILDS+=schifra_interleaving_example03
BUILDS+=schifra_reed_solomon_file_encoding_example
BUILDS+=schifra_reed_solomon_file_decoding_example
BUILDS+=schifra_reed_solomon_file_interleaving_example
BUILDS+=schifra_bitio_example01
BUILDS+=schifra_bitio_example02
BUILDS+=schifra_erasure_channel_example01
BUILDS+=schifra_erasure_channel_example02
BUILDS+=schifra_reed_solomon_gencodec_example
BUILDS+=schifra_reed_solomon_product_code_example


all: $(BUILDS)

run_tests : clean all
	./schifra_reed_solomon_codec_validation
	./schifra_reed_solomon_speed_evaluation

schifra_reed_solomon_codec_validation: $(TST)/schifra_reed_solomon_codec_validation.cpp $(HPP_SRC)
	$(COMPILER) $(OPTIONS) -o schifra_reed_solomon_codec_validation $(TST)/schifra_reed_solomon_codec_validation.cpp

schifra_reed_solomon_speed_evaluation: $(TST)/schifra_reed_solomon_speed_evaluation.cpp $(HPP_SRC)
	$(COMPILER) $(OPTIONS) -o schifra_reed_solomon_speed_evaluation $(TST)/schifra_reed_solomon_speed_evaluation.cpp

schifra_reed_solomon_file_encoding_example: $(TST)/schifra_reed_solomon_file_encoding_example.cpp $(HPP_SRC)
	$(COMPILER) $(OPTIONS) -o schifra_reed_solomon_file_encoding_example $(TST)/schifra_reed_solomon_file_encoding_example.cpp

schifra_reed_solomon_file_decoding_example: $(TST)/schifra_reed_solomon_file_decoding_example.cpp $(HPP_SRC)
	$(COMPILER) $(OPTIONS) -o schifra_reed_solomon_file_decoding_example $(TST)/schifra_reed_solomon_file_decoding_example.cpp

schifra_reed_solomon_example01: $(TST)/schifra_reed_solomon_example01.cpp $(HPP_SRC)
	$(COMPILER) $(OPTIONS) -o schifra_reed_solomon_example01 $(TST)/schifra_reed_solomon_example01.cpp

schifra_reed_solomon_example02: $(TST)/schifra_reed_solomon_example02.cpp $(HPP_SRC)
	$(COMPILER) $(OPTIONS) -o schifra_reed_solomon_example02 $(TST)/schifra_reed_solomon_example02.cpp

schifra_reed_solomon_example03: $(TST)/schifra_reed_solomon_example03.cpp $(HPP_SRC)
	$(COMPILER) $(OPTIONS) -o schifra_reed_solomon_example03 $(TST)/schifra_reed_solomon_example03.cpp

schifra_reed_solomon_example04: $(TST)/schifra_reed_solomon_example04.cpp $(HPP_SRC)
	$(COMPILER) $(OPTIONS) -o schifra_reed_solomon_example04 $(TST)/schifra_reed_solomon_example04.cpp

schifra_reed_solomon_example05: $(TST)/schifra_reed_solomon_example05.cpp $(HPP_SRC)
	$(COMPILER) $(OPTIONS) -o schifra_reed_solomon_example05 $(TST)/schifra_reed_solomon_example05.cpp

schifra_reed_solomon_example06: $(TST)/schifra_reed_solomon_example06.cpp $(HPP_SRC)
	$(COMPILER) $(OPTIONS) -o schifra_reed_solomon_example06 $(TST)/schifra_reed_solomon_example06.cpp

schifra_reed_solomon_example07: $(TST)/schifra_reed_solomon_example07.cpp $(HPP_SRC)
	$(COMPILER) $(OPTIONS) -o schifra_reed_solomon_example07 $(TST)/schifra_reed_solomon_example07.cpp

schifra_reed_solomon_example08: $(TST)/schifra_reed_solomon_example08.cpp $(HPP_SRC)
	$(COMPILER) $(OPTIONS) -o schifra_reed_solomon_example08 $(TST)/schifra_reed_solomon_example08.cpp

schifra_interleaving_example01: $(TST)/schifra_interleaving_example01.cpp $(HPP_SRC)
	$(COMPILER) $(OPTIONS) -o schifra_interleaving_example01 $(TST)/schifra_interleaving_example01.cpp

schifra_interleaving_example02: $(TST)/schifra_interleaving_example02.cpp $(HPP_SRC)
	$(COMPILER) $(OPTIONS) -o schifra_interleaving_example02 $(TST)/schifra_interleaving_example02.cpp

schifra_interleaving_example03: $(TST)/schifra_interleaving_example03.cpp $(HPP_SRC)
	$(COMPILER) $(OPTIONS) -o schifra_interleaving_example03 $(TST)/schifra_interleaving_example03.cpp

schifra_reed_solomon_file_interleaving_example: $(TST)/schifra_reed_solomon_file_interleaving_example.cpp $(HPP_SRC)
	$(COMPILER) $(OPTIONS) -o schifra_reed_solomon_file_interleaving_example $(TST)/schifra_reed_solomon_file_interleaving_example.cpp

schifra_bitio_example01: $(TST)/schifra_bitio_example01.cpp $(HPP_SRC)
	$(COMPILER) $(OPTIONS) -o schifra_bitio_example01 $(TST)/schifra_bitio_example01.cpp

schifra_bitio_example02: $(TST)/schifra_bitio_example02.cpp $(HPP_SRC)
	$(COMPILER) $(OPTIONS) -o schifra_bitio_example02 $(TST)/schifra_bitio_example02.cpp

schifra_erasure_channel_example01: $(TST)/schifra_erasure_channel_example01.cpp $(HPP_SRC)
	$(COMPILER) $(OPTIONS) -o schifra_erasure_channel_example01 $(TST)/schifra_erasure_channel_example01.cpp

schifra_erasure_channel_example02: $(TST)/schifra_erasure_channel_example02.cpp $(HPP_SRC)
	$(COMPILER) $(OPTIONS) -o schifra_erasure_channel_example02 $(TST)/schifra_erasure_channel_example02.cpp

schifra_reed_solomon_gencodec_example: $(TST)/schifra_reed_solomon_gencodec_example.cpp $(HPP_SRC)
	$(COMPILER) $(OPTIONS) -o schifra_reed_solomon_gencodec_example $(TST)/schifra_reed_solomon_gencodec_example.cpp

schifra_reed_solomon_product_code_example : $(TST)/schifra_reed_solomon_product_code_example.cpp $(HPP_SRC)
	$(COMPILER) $(OPTIONS) -o schifra_reed_solomon_product_code_example $(TST)/schifra_reed_solomon_product_code_example.cpp

schifra_reed_solomon_threads_example01: $(TST)/schifra_reed_solomon_threads_example01.cpp $(HPP_SRC)
	$(COMPILER) $(OPTIONS) -o schifra_reed_solomon_threads_example01 $(TST)/schifra_reed_solomon_threads_example01.cpp -pthread -lboost_thread

schifra_reed_solomon_threads_example02: $(TST)/schifra_reed_solomon_threads_example02.cpp $(HPP_SRC)
	$(COMPILER) $(OPTIONS) -o schifra_reed_solomon_threads_example02 $(TST)/schifra_reed_solomon_threads_example02.cpp -pthread -lboost_thread

clean:
	rm -f core.* *.o *.bak *stackdump *~

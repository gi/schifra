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

ROOT != pwd
INC = inc
SRC = src
TST = tst

OPTIMIZE = -O3
WARNINGS = -pedantic-errors -Wall -Wextra -Werror -Wno-long-long
INCLUDES += -I$(ROOT)/$(INC)
CXXFLAGS = -ansi $(OPTIMIZE) $(WARNINGS) $(INCLUDES)

export ROOT
export CXXFLAGS
export HEADERS = $(ROOT)/$(INC)/*

all: lib $(TST)

lib:

$(TST): $(TST)/all
$(TST)/%:
	make -C $(TST) $(@F)

tests: $(TST)/tests

run_tests : clean all $(TST)/run

clean:
	make -C $(TST) clean

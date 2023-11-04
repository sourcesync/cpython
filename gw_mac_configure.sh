#!/bin/bash

# from cpython mac instructions
#CPPFLAGS="-I$(brew --prefix gdbm)/include -I$(brew --prefix xz)/include" \
#  LDFLAGS="-L$(brew --prefix gdbm)/lib -L$(brew --prefix xz)/lib" \
#  ./configure --with-pydebug \
#              --with-openssl="$(brew --prefix openssl@3.0)" \
#              --with-tcltk-libs="$(pkg-config --libs tcl tk)" \
#              --with-tcltk-includes="$(pkg-config --cflags tcl tk)"

# adding brew installed locations
export PKG_CONFIG_PATH=/usr/local/opt/zlib/lib/pkgconfig
CPPFLAGS="-I$(brew --prefix gdbm)/include -I$(brew --prefix xz)/include -I/usr/local/opt/readline/include -I/usr/local/opt/zlib/include" \
  LDFLAGS="-L$(brew --prefix gdbm)/lib -L$(brew --prefix xz)/lib -L/usr/local/opt/readline/lib -L/usr/local/opt/zlib/lib" \
  ./configure --with-pydebug \
              --with-openssl="$(brew --prefix openssl@3.0)" \
              --with-tcltk-libs="$(pkg-config --libs tcl tk)" \
              --with-tcltk-includes="$(pkg-config --cflags tcl tk)"

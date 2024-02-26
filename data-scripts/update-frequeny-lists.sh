#!/bin/bash
#
rm -fv ../native-src/zxcvbn/_frequency_lists.hpp
rm -fv ../native-src/zxcvbn/_frequency_lists.cpp
rm -fv ../native-src/zxcvbn/adjacency_graphs.hpp
rm -fv ../native-src/zxcvbn/adjacency_graphs.cpp
#
python3 ./build_frequency_lists.py ../data ../native-src/zxcvbn/_frequency_lists.hpp
python3 ./build_frequency_lists.py ../data ../native-src/zxcvbn/_frequency_lists.cpp
#
python3 ./build_keyboard_adjacency_graphs.py ../native-src/zxcvbn/adjacency_graphs.hpp
python3 ./build_keyboard_adjacency_graphs.py ../native-src/zxcvbn/adjacency_graphs.cpp
#

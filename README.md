# zxcvbn-cpp

This is a C++ port of [`zxcvbn`](https://github.com/dropbox/zxcvbn),
an advanced password strength estimation library. For more details on how
`zxcvbn` works and its advantages, check out
[the blog post](https://tech.dropbox.com/2012/04/zxcvbn-realistic-password-strength-estimation/).

This port is a direct translation of the original CoffeeScript
source. This allows this port to easily stay in sync with the original
source. Additionally, this port uses the same exact test scripts from
the original with the help of emscripten.

## How to build for your C/C++ project

Adapt these instructions to your build environment.

First generate adjacency graphs and frequency lists:

```shell
$ python ./data-scripts/build_frequency_lists.py ./data ./native-src/zxcvbn/_frequency_lists.hpp
$ python ./data-scripts/build_frequency_lists.py ./data ./native-src/zxcvbn/_frequency_lists.cpp
$ python ./data-scripts/build_keyboard_adjacency_graphs.py ./native-src/zxcvbn/adjacency_graphs.hpp
$ python ./data-scripts/build_keyboard_adjacency_graphs.py ./native-src/zxcvbn/adjacency_graphs.cpp
```

Add `/absolute_path/to/zxcvbn-repo/native-src` to your include path,
then build all the `.cpp` files in
`/absolute_path/to/zxcvbn-repo/native-src/zxcvbn`. Make sure you
use the `-std=c++14` compiler flag.

## Development

Bug reports and pull requests welcome!

Please note `zxcvbn-cpp` is written using modern C++14 techniques, no
passing around stray pointers!

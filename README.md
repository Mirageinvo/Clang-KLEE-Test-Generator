# Clang-KLEE-Test-Generator for C/C++ language

## Installation guide and requirements

### Install dependencies:
```
sudo apt-get install build-essential cmake curl file g++-multilib gcc-multilib git libcap-dev libgoogle-perftools-dev libncurses5-dev libsqlite3-dev libtcmalloc-minimal4 python3-pip unzip graphviz doxygen
```
```
pip3 install lit wllvm
sudo apt-get install python3-tabulate
sudo apt-get install pipx
pipx install lit wllvm
```

### Install LLVM 13:
```
wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key|sudo apt-key add -
```
```
sudo apt-get install clang-13 llvm-13 llvm-13-dev llvm-13-tools
```

### Install STP:
```
sudo apt-get install cmake bison flex libboost-all-dev python perl zlib1g-dev minisat
```

- MiniSAT should be installed manually:
```
git clone https://github.com/stp/minisat.git
cd minisat && mkdir build && cd build
cmake -DCMAKE_INSTALL_PREFIX=/usr/local/ ../
sudo make install
```

- To install STP, run:
```
git clone https://github.com/stp/stp.git
cd stp && git checkout tags/2.3.3
mkdir build && cd build
cmake .. && make
sudo make install
```
Before running KLEE with STP on larger benchmarks, it is essential to set the size of the stack to a very large value:
```
ulimit -s unlimited
```

### Get Google test sources:
```
curl -OL https://github.com/google/googletest/archive/release-1.11.0.zip
unzip release-1.11.0.zip
```

### Build uClibc and the POSIX environment model:
```
git clone https://github.com/klee/klee-uclibc.git
cd klee-uclibc
./configure --make-llvm-lib --with-cc clang-13 --with-llvm-config llvm-config-13
make -j2
```

### Get KLEE source:
```
git clone https://github.com/klee/klee.git
```

### Build libc++:
```
LLVM_VERSION=13 BASE=${LIBCXX_DIR} ENABLE_OPTIMIZED=1 DISABLE_ASSERTIONS=1 ENABLE_DEBUG=0 REQUIRES_RTTI=1 scripts/build/build.sh libcxx
```
where LIBCXX_DIR is the absolute path where libc++ should be cloned and built.

### Configure KLEE:
```
mkdir build && cd build
cmake -DENABLE_SOLVER_STP=ON -DENABLE_POSIX_RUNTIME=ON -DKLEE_UCLIBC_PATH=/src/klee-uclibc -DENABLE_UNIT_TESTS=ON -DGTEST_SRC_DIR=/src/googletest-release-1.11.0/ -DENABLE_KLEE_LIBCXX=ON -DKLEE_LIBCXX_DIR=/src/libcxx/libc++-install-130/ -DKLEE_LIBCXX_INCLUDE_DIR=/src/libcxx/libc++-install-130/include/c++/v1/ -DENABLE_KLEE_EH_CXX=ON -DKLEE_LIBCXXABI_SRC_DIR=/src/libcxx/llvm-130/libcxxabi/ ..
make -j4
```

### Run the main regression test suite:
```
make systemtests
```

### Build and run the unit tests:
```
make unittests
```
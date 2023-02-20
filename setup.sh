#!/bin/bash

LLVM_BUILD_DIR=build

mkdir -p ${LLVM_BUILD_DIR}
pushd ${LLVM_BUILD_DIR}
cmake ../llvm/llvm -DLLVM_TARGETS_TO_BUILD=X86\
                   -DCMAKE_BUILD_TYPE=Release\
                   -DLLVM_ENABLE_PROJECTS=clang
make -j$(nproc)
popd

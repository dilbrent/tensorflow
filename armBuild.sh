# grep -Rl 'lib' | xargs sed -i 's/lib/lib/g'

#bazel build -c opt  --copt="-funsafe-math-optimizations" --copt="-ftree-vectorize" --copt="-std=c99"  \
#--copt="-fomit-frame-pointer" --local_resources 1024,1.0,1.0 --verbose_failures \
#tensorflow/tools/pip_package:build_pip_package


#bazel build -c opt --copt="-mfpu=neon-vfpv4" --copt="-funsafe-math-optimizations" --copt="-ftree-vectorize" --copt="-fomit-frame-pointer" \
#--local_resources 1024,1.0,1.0 --verbose_failures tensorflow/tools/pip_package:build_pip_package


#bazel build -c opt --copt="-funsafe-math-optimizations" --copt="-ftree-vectorize" --copt="-fomit-frame-pointer" \
#--local_resources 1024,1.0,1.0 --verbose_failures tensorflow/tools/pip_package:build_pip_package

bazel build --jobs 1 --ram_utilization_factor 40 -c opt --config=monolithic --copt="-funsafe-math-optimizations" --copt="-ftree-vectorize" --copt="-fomit-frame-pointer" \
--local_resources 1024,1.0,1.0 --verbose_failures tensorflow/tools/pip_package:build_pip_package

#run this next line after the previous bazel build statement completes.  it's commented out since the first couple
#of builds run out of memory and have to pick up where they left off.
#bazel-bin/tensorflow/tools/pip_package/build_pip_package /tmp/tensorflow_pkg


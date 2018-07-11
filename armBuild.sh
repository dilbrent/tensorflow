# grep -Rl 'lib64' | xargs sed -i 's/lib64/lib/g'

#bazel build -c opt  --copt="-funsafe-math-optimizations" --copt="-ftree-vectorize" --copt="-std=c99"  \
#--copt="-fomit-frame-pointer" --local_resources 1024,1.0,1.0 --verbose_failures \
#tensorflow/tools/pip_package:build_pip_package


#bazel build -c opt --copt="-mfpu=neon-vfpv4" --copt="-funsafe-math-optimizations" --copt="-ftree-vectorize" --copt="-fomit-frame-pointer" \
#--local_resources 1024,1.0,1.0 --verbose_failures tensorflow/tools/pip_package:build_pip_package


bazel build -c opt --copt="-funsafe-math-optimizations" --copt="-ftree-vectorize" --copt="-fomit-frame-pointer" \
--local_resources 1024,1.0,1.0 --verbose_failures tensorflow/tools/pip_package:build_pip_package


#bazel-bin/tensorflow/tools/pip_package/build_pip_package /tmp/tensorflow_pkg


# Bazel Build Errors

## Errors due to missing python dependencies

*   **benchmarks/mosaic/BUILD**
    *   `no such package 'third_party/py/google_benchmark': BUILD file not found in any of the following directories. Add a BUILD file to a directory to mark it as a package. /home/daniel/projects/jax/third_party/py/google_benchmark and referenced by '//benchmarks/mosaic:matmul_bench_gpu'` (Line 31:23)

*   **jax/experimental/jax2tf/tests/back_compat_testdata/BUILD**
    *   `no such package 'third_party/py/numpy': BUILD file not found in any of the following directories. Add a BUILD file to a directory to mark it as a package. /home/daniel/projects/jax/third_party/py/numpy and referenced by '//jax/experimental/jax2tf/tests/back_compat_testdata:back_compat_testdata'` (Line 24:11)
    *   `no such package 'third_party/py/typing_extensions': BUILD file not found in any of the following directories. Add a BUILD file to a directory to mark it as a package. /home/daniel/projects/jax/third_party/py/typing_extensions and referenced by '//jax/experimental/jax2tf/tests/back_compat_testdata:back_compat_testdata'` (Line 24:11)

*   **jax/experimental/jax2tf/tests/flax_models/BUILD**
    *   `no such package 'third_party/py/flax': BUILD file not found in any of the following directories. Add a BUILD file to a directory to mark it as a package. /home/daniel/projects/jax/third_party/py/flax and referenced by '//jax/experimental/jax2tf/tests/flax_models:flax_models'` (Line 28:11)
    *   `no such package 'third_party/py/jraph': BUILD file not found in any of the following directories. Add a BUILD file to a directory to mark it as a package. /home/daniel/projects/jax/third_party/py/jraph and referenced by '//jax/experimental/jax2tf/tests/flax_models:flax_models'` (Line 28:11)
    *   `no such package 'third_party/py/numpy': BUILD file not found in any of the following directories. Add a BUILD file to a directory to mark it as a package. /home/daniel/projects/jax/third_party/py/numpy and referenced by '//jax/experimental/jax2tf/tests/flax_models:flax_models'` (Line 28:11)
    *   `no such package 'third_party/py/typing_extensions': BUILD file not found in any of the following directories. Add a BUILD file to a directory to mark it as a package. /home/daniel/projects/jax/third_party/py/typing_extensions and referenced by '//jax/experimental/jax2tf/tests/flax_models:flax_models'` (Line 28:11)

*   **jax/experimental/jax2tf/tests/BUILD**
    *   `no such package 'third_party/py/absl': BUILD file not found in any of the following directories. Add a BUILD file to a directory to mark it as a package. /home/daniel/projects/jax/third_party/py/absl and referenced by '//jax/experimental/jax2tf/tests:sharding_test_cpu'` (Line 219:23)
    *   `no such package 'third_party/py/absl': BUILD file not found in any of the following directories. Add a BUILD file to a directory to mark it as a package. /home/daniel/projects/jax/third_party/py/absl and referenced by '//jax/experimental/jax2tf/tests:sharding_test_gpu'` (Line 219:23)
    *   `no such package 'third_party/py/jraph': BUILD file not found in any of the following directories. Add a BUILD file to a directory to mark it as a package. /home/daniel/projects/jax/third_party/py/jraph and referenced by '//jax/experimental/jax2tf/tests:models_util'` (Line 59:11)
    *   `no such package 'third_party/py/numpy': BUILD file not found in any of the following directories. Add a BUILD file to a directory to mark it as a package. /home/daniel/projects/jax/third_party/py/numpy and referenced by '//jax/experimental/jax2tf/tests:models_util'` (Line 59:11)
    *   `no such package 'third_party/py/tensorflowjs': BUILD file not found in any of the following directories. Add a BUILD file to a directory to mark it as a package. /home/daniel/projects/jax/third_party/py/tensorflowjs and referenced by '//jax/experimental/jax2tf/tests:models_util'` (Line 59:11)
    *   `no such package 'pyglib': BUILD file not found in any of the following directories. Add a BUILD file to a directory to mark it as a package. /home/daniel/projects/jax/pyglib and referenced by '//jax/experimental/jax2tf/tests:models_test_main'` (Line 285:10)
    *   `no such package 'third_party/py/absl': BUILD file not found in any of the following directories. Add a BUILD file to a directory to mark it as a package. /home/daniel/projects/jax/third_party/py/absl and referenced by '//jax/experimental/jax2tf/tests:models_test_main'` (Line 285:10)
    *   `no such package 'third_party/py/absl/flags': BUILD file not found in any of the following directories. Add a BUILD file to a directory to mark it as a package. /home/daniel/projects/jax/third_party/py/absl/flags and referenced by '//jax/experimental/jax2tf/tests:models_test_main'` (Line 285:10)
    *   `no such package 'third_party/py/numpy': BUILD file not found in any of the following directories. Add a BUILD file to a directory to mark it as a package. /home/daniel/projects/jax/third_party/py/numpy and referenced by '//jax/experimental/jax2tf/tests:models_test_main'` (Line 285:10)
    *   `no such package 'third_party/py/tensorflow': BUILD file not found in any of the following directories. Add a BUILD file to a directory to mark it as a package. /home/daniel/projects/jax/third_party/py/tensorflow and referenced by '//jax/experimental/jax2tf/tests:models_test_main'` (Line 285:10)
    *   `no such package 'third_party/py/absl': BUILD file not found in any of the following directories. Add a BUILD file to a directory to mark it as a package. /home/daniel/projects/jax/third_party/py/absl and referenced by '//jax/experimental/jax2tf/tests:sharding_test_tpu'` (Line 219:23)


## Errors due to missing repository definitions

    *   `no such package '@@pypi_nvidia_cudnn_cu//': The repository '@@pypi_nvidia_cudnn_cu' could not be resolved: Repository '@@pypi_nvidia_cudnn_cu' is not defined and referenced by '//jaxlib/tools:nvidia_wheel_deps'` (Line 432:10)
    *   `no such package '@@pypi_nvidia_nccl_cu//': The repository '@@pypi_nvidia_nccl_cu' could not be resolved: Repository '@@pypi_nvidia_nccl_cu' is not defined and referenced by '//jaxlib/tools:nvidia_wheel_deps'` (Line 432:10)
    *   `no such package '@@pypi_nvidia_nvshmem_cu//': The repository '@@pypi_nvidia_nvshmem_cu' could not be resolved: Repository '@@pypi_nvidia_nvshmem_cu' is not defined and referenced by '//jaxlib/tools:nvidia_wheel_deps'` (Line 432:10)
    *   `no such package '@@pypi_jax_cuda_pjrt//': The repository '@@pypi_jax_cuda_pjrt' could not be resolved: Repository '@@pypi_jax_cuda_pjrt' is not defined and referenced by '//jaxlib/tools:pypi_jax_cuda_pjrt_with_cuda_deps_unpacked_wheel'` (Line 501:10)
    *   `no such package '@@pypi_jax_cuda_plugin//': The repository '@@pypi_jax_cuda_plugin' could not be resolved: Repository '@@pypi_jax_cuda_plugin' is not defined and referenced by '//jaxlib/tools:pypi_jax_cuda_plugin_with_cuda_deps_unpacked_wheel'` (Line 495:10)

*   **BUILD.bazel**
    *   `no such package '@@pypi_jax//': The repository '@@pypi_jax' could not be resolved: Repository '@@pypi_jax' is not defined and referenced by '//:jax_wheel_with_internal_test_util_unpacked_wheel'` (Line 173:10)

## Errors due to internal test dependencies

*   **jaxlib/mosaic/dialect/gpu/BUILD**
    *   `no such package 'testing/base/public': BUILD file not found in any of the following directories. Add a BUILD file to a directory to mark it as a package. /home/daniel/projects/jax/testing/base/public and referenced by '//jaxlib/mosaic/dialect/gpu:mosaic_gpu_test'` (Line 111:8)

*   **jaxlib/mosaic/gpu/BUILD**
    *   `no such package 'testing/base/public': BUILD file not found in any of the following directories. Add a BUILD file to a directory to mark it as a package. /home/daniel/projects/jax/testing/base/public and referenced by '//jaxlib/mosaic/gpu:custom_call_test'` (Line 385:8)
    *   `no such package 'testing/base/public': BUILD file not found in any of the following directories. Add a BUILD file to a directory to mark it as a package. /home/daniel/projects/jax/testing/base/public and referenced by '//jaxlib/mosaic/gpu:dump_test'` (Line 89:8)
    *   `no such package 'testing/base/public': BUILD file not found in any of the following directories. Add a BUILD file to a directory to mark it as a package. /home/daniel/projects/jax/testing/base/public and referenced by '//jaxlib/mosaic/gpu:gpu_module_to_assembly_test'` (Line 99:8)
    *   `no such package 'testing/base/public': BUILD file not found in any of the following directories. Add a BUILD file to a directory to mark it as a package. /home/daniel/projects/jax/testing/base/public and referenced by '//jaxlib/mosaic/gpu:tiled_layout_test'` (Line 467:8)
    *   `no such package 'testing/base/public': BUILD file not found in any of the following directories. Add a BUILD file to a directory to mark it as a package. /home/daniel/projects/jax/testing/base/public and referenced by '//jaxlib/mosaic/gpu:transforms_test'` (Line 546:8)
    *   `no such package 'testing/base/public': BUILD file not found in any of the following directories. Add a BUILD file to a directory to mark it as a package. /home/daniel/projects/jax/testing/base/public and referenced by '//jaxlib/mosaic/gpu:utils_test'` (Line 502:8)

*   **jaxlib/mosaic/BUILD**
    *   `no such package 'testing/base/public': BUILD file not found in any of the following directories. Add a BUILD file to a directory to mark it as a package. /home/daniel/projects/jax/testing/base/public and referenced by '//jaxlib/mosaic:array_util_test'` (Line 294:8)
    *   `no such package 'testing/base/public': BUILD file not found in any of the following directories. Add a BUILD file to a directory to mark it as a package. /home/daniel/projects/jax/testing/base/public and referenced by '//jaxlib/mosaic:tpu_ops_verification_test'` (Line 305:8)
    *   `no such package 'testing/base/public': BUILD file not found in any of the following directories. Add a BUILD file to a directory to mark it as a package. /home/daniel/projects/jax/testing/base/public and referenced by '//jaxlib/mosaic:vreg_util_test'` (Line 280:8)

*   **jaxlib/tools/BUILD.bazel**
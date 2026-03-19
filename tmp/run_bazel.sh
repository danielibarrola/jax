EXCLUDE_TARGETS=(
  # Targets that depend on internal testing tools /testing/base/public
  -//jaxlib/mosaic/dialect/gpu:mosaic_gpu_test
  -//jaxlib/mosaic/gpu:custom_call_test
  -//jaxlib/mosaic/gpu:dump_test
  -//jaxlib/mosaic/gpu:gpu_module_to_assembly_test
  -//jaxlib/mosaic/gpu:tiled_layout_test
  -//jaxlib/mosaic/gpu:transforms_test
  -//jaxlib/mosaic/gpu:utils_test
  -//jaxlib/mosaic:array_util_test
  -//jaxlib/mosaic:tpu_ops_verification_test
  -//jaxlib/mosaic:vreg_util_test
  # Targets with missing python dependencies
  -//benchmarks/mosaic:matmul_bench_gpu
  -//jax/experimental/jax2tf/tests/back_compat_testdata:back_compat_testdata
  -//jax/experimental/jax2tf/tests/flax_models:flax_models
  -//jax/experimental/jax2tf/tests:sharding_test_cpu
  -//jax/experimental/jax2tf/tests:sharding_test_gpu
  -//jax/experimental/jax2tf/tests:models_util
  -//jax/experimental/jax2tf/tests:models_test_main
  -//jax/experimental/jax2tf/tests:sharding_test_tpu
)

bazel build --nobuild --color=yes --keep_going -- //... "${EXCLUDE_TARGETS[@]}"
EXCLUDED_TARGETS=(
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
  # Targets dependent on missing TEST dependencies
  -//jax/experimental/jax2tf/tests:all
  -//jax/experimental/jax2tf/tests/flax_models:all
  -//jax/experimental/jax2tf/tests/back_compat_testdata:all
  -//benchmarks/mosaic:all
)

bazel build \
  --nobuild \
  --color=yes \
  --keep_going \
  --config=cuda_libraries_from_stubs \
  -- \
  //jaxlib/... \
  //jax/... \
  //benchmarks/... \
  //build/... \
  "${EXCLUDED_TARGETS[@]}"

# Test root build separately as jax_wheel_with_internal_test_util fails to build
TARGETS=(
  ":jax_sources"
  ":build_wheel"
  ":jax_wheel"
  ":jax_wheel_editable"
  ":jax_source_package"
  ":wheel_additives"
  ":jax_py_import"
  ":jax_wheel_size_test"
)
bazel build \
  --nobuild \
  --color=yes \
  --keep_going \
  --config=cuda_libraries_from_stubs \
  -- \
  "${TARGETS[@]}"

EXCLUDED_JAXLIB_TARGETS=(
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

)

bazel build --nobuild --color=yes --keep_going --config=cuda_libraries_from_stubs -- //jaxlib/... "${EXCLUDED_JAXLIB_TARGETS[@]}"

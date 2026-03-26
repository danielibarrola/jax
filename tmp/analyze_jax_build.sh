EXCLUDED_JAX_TARGETS=(
  # Targets dependent on missing TEST dependencies
  -//jax/experimental/jax2tf/tests:all
  -//jax/experimental/jax2tf/tests/flax_models:all
  -//jax/experimental/jax2tf/tests/back_compat_testdata:all
)

bazel build --nobuild --color=yes --keep_going -- //jax/... "${EXCLUDED_JAX_TARGETS[@]}"

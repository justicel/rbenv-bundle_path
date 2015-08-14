ruby_abi=$( echo "$RBENV_VERSION" | cut -d. -f1-2 ).0

if ! [ -z "$BUNDLE_OVERRIDE_ROOT" ]; then
  export BUNDLE_PATH="$BUNDLE_OVERRIDE_ROOT/ruby/$ruby_abi"
else
  export BUNDLE_PATH=".bundle/ruby/$ruby_abi"
fi

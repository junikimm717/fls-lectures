mkdir -p /tmp/hello
# prints 0
echo "$?"
# prints 1 (because it already exists)
mkdir /tmp/hello
echo "$?"

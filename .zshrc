
# fnm
FNM_PATH="/Users/kunalsharma/Library/Application Support/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="/Users/kunalsharma/Library/Application Support/fnm:$PATH"
  eval "`fnm env`"
fi

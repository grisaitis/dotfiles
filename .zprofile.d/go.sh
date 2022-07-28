if [[ -x $(command -v go) ]]; then
  # if go command is available...
  export GOPATH=$(go env GOPATH)
  export GOROOT=$(go env GOROOT)
  export PATH="$PATH:${GOPATH}/bin"
fi

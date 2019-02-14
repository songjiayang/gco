# !/bin/sh

set -e
if [ $# != 3 ]; then
  echo "Usage:"

  echo "gco example v0.1.0 main.go"
  exit 1
fi

declare -a os=(
"darwin" "darwin" "darwin" "darwin"
"dragonfly"
"freebsd" "freebsd" "freebsd"
"linux" "linux" "linux" "linux" "linux" "linux" "linux" "linux" "linux" "linux"
"netbsd" "netbsd" "netbsd"
"openbsd" "openbsd" "openbsd"
"plan9" "plan9"
"solaris"
"windows" "windows")

declare -a arches=("386" "amd64" "arm" "arm64"
"amd64"
"386" "amd64" "arm"
"386" "amd64" "arm" "arm64" "ppc64" "ppc64le" "mips" "mipsle" "mips64" "mips64le"
"386" "amd64" "arm"
"386" "amd64" "arm"
"386" "amd64"
"amd64"
"386" "amd64")

len=${#os[@]}

for (( i=1; i<${len}+1; i++ ));
do
  echo "--> building pkg/$1_$2.${os[$i-1]}_${arches[$i-1]} $3"
  go build -a -o "pkg/$1_$2.${os[$i-1]}_${arches[$i-1]}" $3
done

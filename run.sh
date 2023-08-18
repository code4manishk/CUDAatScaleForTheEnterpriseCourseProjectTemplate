#!/bin/bash
 
help() {
  echo ""
  echo "sh run.sh -i input_data_path -o output_path"
  echo "example: sh run.sh -i ./data -o /tmp/out"
}

main() {
  if [ "$#" -lt 2 ]; then
        help
        exit 1
  fi

  make clean build

  local input="./data"
  local output="./out"

  while [ $# -gt 0 ]; do
        case $1 in
        -i | --input) shift 1; dir_path=$1;;
        -h | --help) help; return 0;;
        -o | --output) shift 1; output=$1;;
        *)
        echo "unknown option $1"
        help
        exit 1
        esac
        shift 1
  done

  echo "$input, $output"
  ./boxFilterNPP $input $output
}

main $@

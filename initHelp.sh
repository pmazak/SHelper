#  Pretty prints the comments at the top of the scripts
#  
#  

get_line_from_file() { local lineNum=$1; local file=$2
  head -$lineNum $file | tail -n -1 | sed 's/\\n/\n/g' | tail -c +4
}

print_usage_subcommand() { local cmdfile=$1
  desc=`get_line_from_file 1 $cmdfile`
  opts=`get_line_from_file 2 $cmdfile`
  exOpts=`get_line_from_file 3 $cmdfile`
  echo "Usage:"
  echo "  sh $cmdfile $opts"
  echo "Example:"
  echo "  sh $cmdfile $exOpts"
  echo "Description:"
  echo "  $desc"
}

if [[ "$@" = *\-\?* ]] || [[ "$@" = *\-help* ]]; then
    print_usage_subcommand $0
    exit 1
fi
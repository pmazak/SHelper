#  Runs the log grepper job
#  <regex> (<maxNumMatches>)
#  .+ABC.+
source `dirname $0`/initHelp.sh
echo "Finding lines matching ${1}..."
echo "Done."
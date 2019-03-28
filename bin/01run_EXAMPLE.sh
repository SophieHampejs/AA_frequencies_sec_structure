#!/usr/bin/env bash
set -euxo pipefail  # https://vaneyckt.io/posts/safer_bash_scripts_with_set_euxo_pipefail/

# This is an EXAMPLE for a very basic driver script. Modify it as required.

### Variable section

NUM_ENTRIES=50
ENTRY_LIST_FILE=results_firstpart.txt

###

# create directory structure
mkdir -p data results temp  # -p -> won't complain if directory exists
cd data
for F in ../../data/*; do 
  ln -sf $F;  # symlink input data files where they belong
done
cd ..

# analysis step one: generate list of entries
if [ ! -f results/$ENTRY_LIST_FILE ]; then  # test if file exists/step needs to be performed
  # script takes the number of entries and generates a list of selected entries
  bin/some_script_to_generate_first_part_of_results.py $NUM_ENTRIES results/$ENTRY_LIST_FILE
fi

# analysis step two: process list of entries and generate some big files with important results
if ! ls results/*_big_files_* 1> /dev/null 2>&1; then  # test for the existence of one or more files
  # scripts takes the list of selected entries and generates *_big_files_* in temp
  bin/another_script_to_generate_more_results.py results/$ENTRY_LIST_FILE temp
  mv temp/* results && rmdir temp  # remove temporary data
fi

# clean up
rm -f temp  # -f -> won't complain if non-existing
gzip results/*_big_files_*


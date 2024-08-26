# Usage
Currently there's only one script, that I use to dynamically create columns for my contexts. I view it using the command `topydo columns -l <(topydo ls t:<=today -waiting: | sed -E 's/.*(@[^ ]*).*/\1/' | grep @ | sort | uniq | awk -f ~/sync/todo/gen_columns.awk) 't:<=today' -waiting:`.

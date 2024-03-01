# Some commands for self-tracking
# OPTIONS
# Store the logs directory in a variable
declare-option -hidden str log_dir %sh{ echo "$HOME/repository/personal/diary" }
# COMMANDS

## Diary Entries
define-command diary-new %{ edit %sh{ printf "%s" "$kak_opt_log_dir/$(date +%F).md" } }
define-command diary-previous %{ edit %sh{ printf "%s" "$(find $kak_opt_log_dir -maxdepth 1 -type f | sed -n 'x;$p')" } }	# this sed magic was picked up from https://stackoverflow.com/a/7671768; don't really understand it :/

## Gymnastics Log
define-command gymnastics-new %{
    nop %sh{ test -e "$kak_opt_log_dir/gymnastics/$(date +%F).md" ||
    cat "$kak_opt_log_dir/gymnastics/TEMPLATE" > "$kak_opt_log_dir/gymnastics/$(date +%F).md" }
    edit %sh{ printf "%s" "$kak_opt_log_dir/gymnastics/$(date +%F).md" }
	execute-keys -save-regs '' /\$REPS<ret>
}

## Flexibility Log
define-command flexibility-new %{
    nop %sh{ test -e "$kak_opt_log_dir/flexibility/$(date +%F).md" ||
    cat "$kak_opt_log_dir/flexibility/TEMPLATE" > "$kak_opt_log_dir/flexibility/$(date +%F).md" }
    edit %sh{ printf "%s" "$kak_opt_log_dir/flexibility/$(date +%F).md" }
}

## Meditation Log
define-command meditation-new %{
	nop %sh{ test -e "$kak_opt_log_dir/meditation/$(date +%F).md" ||
	cat "$kak_opt_log_dir/meditation/TEMPLATE" > "$kak_opt_log_dir/meditation/$(date +%F).md" }
    edit %sh{ printf "%s" "$kak_opt_log_dir/meditation/$(date +%F).md" }
    execute-keys -save-regs '' /\$VALUE<ret>
}

## Studying Log
define-command studying-new %{
	nop %sh{ test -e "$kak_opt_log_dir/studying/$(date +%F).md" ||
	cat "$kak_opt_log_dir/studying/TEMPLATE" > "$kak_opt_log_dir/studying/$(date +%F).md" }
	edit %sh{ printf "%s" "$kak_opt_log_dir/studying/$(date +%F).md" }
	execute-keys -save-regs '' /\$VALUE<ret>
}
define-command studying-previous %{ edit %sh{ printf "%s" "$(find $kak_opt_log_dir/studying/ -maxdepth 1 -type f | sed -n 'x;$p')" } }	# this sed magic was picked up from https://stackoverflow.com/a/7671768; don't really understand it :/


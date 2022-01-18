# Defined in - @ line 1
function ll --wraps=ls --wraps='ll --group-directories-first' --wraps='ls -lh --time-style=long-iso --color=auto --group-directories-first' --description 'alias ll=ls -lh --time-style=long-iso --color=auto --group-directories-first'
  ls -lh --time-style=long-iso --color=always --group-directories-first $argv;
end

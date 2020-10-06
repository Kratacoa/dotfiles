# Defined in - @ line 1
function ll --wraps=ls --wraps='ll --group-directories-first' --wraps='ls -lh --color=auto --group-directories-first' --description 'alias ll=ls -lh --color=auto --group-directories-first'
  ls -lh --color=always --group-directories-first $argv;
end

# Defined in - @ line 1
function llt --wraps='ll -t  | tac' --description 'alias llt=ll -t  | tac'
  ll -t $argv | tac; 
end

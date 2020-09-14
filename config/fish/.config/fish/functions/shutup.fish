# Defined in - @ line 1
function shutup --wraps='sudo shutdown -h now' --description 'alias shutup=sudo shutdown -h now'
  sudo shutdown -h now;
end

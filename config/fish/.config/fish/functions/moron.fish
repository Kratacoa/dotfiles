# Defined in - @ line 1
function moron --wraps='sudo reboot' --description 'alias moron=sudo reboot'
  sudo reboot $argv;
end

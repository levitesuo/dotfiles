function fr-ssh --wraps='ssh -L 3306:127.0.0.1:3306 frendixdev@172.16.10' --description 'alias fr-ssh=ssh -L 3306:127.0.0.1:3306 frendixdev@172.16.10'
  ssh -L 3306:127.0.0.1:3306 frendixdev@172.16.10 $argv
        
end

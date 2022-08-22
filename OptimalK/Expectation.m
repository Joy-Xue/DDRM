function Ex = Expectation(pc,f,T)

Ex(1) = f; % Pr{v~=0},case 1

for t =2:T
    if mod(t,2)==1
        Ex(t) = pc; % Pr{v~=0},case 2
    else
        t_prime = LevelEx(t);
        if t_prime == 0
            Ex(t) = Expe0(pc,f,t); % t = 2^x
        else
            Ex(t) = Expe1(pc,t_prime); % t = 2^x1+2^x2+...
        end
  
    end
end


    
        
        
    
    
function mu = Expe1(pc,t)

S1 = 0;

for i=0:2:t                   
    num = nchoosek(t,i);    
    S1 = S1 + num * ((1-pc)^(t-i)) * (pc^i); 
end


P_top = 1-S1;
mu = 0.5*pc+0.5*P_top; % Pr{v~=0},case 4


    
    
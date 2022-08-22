function p = Expe0(pc,f,t)


S1 = 0;
S2 = 0;

for i=1:2:t-1                    
    num = nchoosek(t-1,i);   
    S1 = S1 + num * f * ((1-pc)^(t-1-i)) * (pc^i);
end

for i = 0:2:t-2
    num = nchoosek(t-1,i);     
    S2 = S2 + num * (1-f) * ((1-pc)^(t-1-i)) * (pc^i);
end

P_top = 1-S1-S2;
p = 0.5*pc+0.5*P_top; % Pr{v~=0},case 3
    
    
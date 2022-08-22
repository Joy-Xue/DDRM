function CT = GetChange(DT,T)

% DT = dlmread('sys_data32.txt');
% T = 32;

CT = DT;
n = length(DT);

for i = 1:n
    for t = 2:T
        CT(i,t) = DT(i,t) - DT(i,t-1);
    end
end

% dlmwrite('c_dt32.txt',CT,'delimiter',' ');
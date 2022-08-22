function [f,N] = DDRM(C,ep,T,k)

% Parameters
f = zeros(1,T);
var = zeros(1,T);
n = length(C);
R = zeros(n,1);
Alpha = zeros(1,n);

% Process
for t = 1:T
    % user side
    [R,am]= Tree(R,C(:,t),t);
    [v,h] = Select(R,am);
    [tv,Alpha] = Noise(v,ep/k,Alpha,k);
    
    % collector side
    hv = tv*(exp(ep/k)+1)/(exp(ep/k)-1); % calibrate
    [fre_new,var_new,N] = Estimate(hv,h,ep/k,f,var,t);
    f(t) = fre_new;
    var(t) = var_new;
end

    

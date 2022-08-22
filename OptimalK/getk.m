function K = getk(ep,N0,N,T,pc)

for k=1:T
    a(k) = sqrt((4/N) * ((exp(ep/k)+1)/(exp(ep/k)-1))^2); % noise error
    b(k) = N0(k)*pc; % manipulation error
    if a(k)>=b(k)
        K = k-1;
        return;
    end
    
end




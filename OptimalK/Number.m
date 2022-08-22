function N0 = Number(k,T,P1,P0) 

P = sum(P1)/T;
q = sum(P0)/T;
N0 = 0;

for t = k:T-1
    R = nchoosek(t-1,k-1);
    Pr = R*P^k*q^(t-k);
    N0 = N0+Pr;
end
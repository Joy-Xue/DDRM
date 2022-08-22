%----------------------- set parameters -----------------------
N = 170000;
pc = 0.15; 
f = 0.5; 
T = 16;

%---------------------- get optimal k ------------------------
P1 = Expectation(pc,f,T);
P0 = 1-P1;
time = 1:T;

for k = 0:T-1
    kx = k+1;
    N0(kx) = Number(kx,T,P1,P0);
end

ep = [0.2,0.5,1,2,3,4,5,6,7,8];

for i = 1:10
    K(1,i) = ep(i);
    K(2,i) = getk(ep(i),N0,N,T,pc);
end



    
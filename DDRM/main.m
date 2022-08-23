%----------------- Data and parameters ------------------
clear
% T = 16;
% D = dlmread('syn_data16.txt');
% D = dlmread('stock_16.txt');
% K =[3,5,6,7,7,7,8,8]; %Syn-16
% K =[2,3,4,5,5,6,6,6]; %Stock-16

T = 32;
% D = dlmread('syn_data32.txt');
D = dlmread('stock_32.txt');
% K =[4,9,11,12,13,13,14,14]; %Syn-32
K =[3,5,7,8,9,9,10,10]; %Stock-32

ep = [0.2,0.5,1,2,3,4,5,6];
True = sum(D)/length(D); % true frequency

%----------------- Initialization ---------------------
l0 = zeros; % L-infinity
l1 = zeros;
l2 = zeros;

%--------------------- Process -----------------------
C = GetChange(D,T);
for i = 1:8
    parfor j = 1:10
        [f,N] = DDRM(C,ep(i),T,K(i));
        f = correction(f,T);
        Dis = sqrt(2)*(abs(True-f));
        err0(j) = max(Dis);
        err1(j) = sum(Dis);
        err2(j) = sqrt(sum(Dis.^2));
    end
    l0(i) = mean(err0);
    l1(i) = mean(err1);
    l2(i) = mean(err2);
end



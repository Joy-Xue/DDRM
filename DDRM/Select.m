function [v,h] = Select(R,am)

r = am+1;

parfor i = 1:length(R)
    if rand>0.5
        h(i) = 1;
        v(i) = R(i,1);
    else
        h(i) = r;
        v(i) = R(i,r);
    end
end
        

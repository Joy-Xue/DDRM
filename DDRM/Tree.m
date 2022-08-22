function [R_new,am] = Tree(R,c,t)

a = zeros;
i = 1;
while t>0
    a(i) = floor(log2(t));
    t = t-2^(a(i));
    i = i+1;
end
a1 = a(1)+1;
am = a(end);

R_new = R;
parfor i = 1:length(c)
    for j = 1:a1
        if j<=am+1
            R_new(i,j) = sum(R(i,1:j-1))+c(i);
        else
            R_new(i,j) = R(i,j);
        end
    end
end
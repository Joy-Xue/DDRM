function f = adjust(f,T)

for i = 1:T
    if f(i)<0
        f(i) = 0;
    elseif f(i)>1
        f(i) = 1;
    else
        f(i) = f(i);
    end
end


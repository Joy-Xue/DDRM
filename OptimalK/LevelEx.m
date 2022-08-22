function re = LevelEx(t)

t1 = t;

while t1-2^(floor(log2(t1))) ~= 0
    t1 = t1-2^(floor(log2(t1)));
end

if t1==t
    re = 0;
else
    re = t1;
end
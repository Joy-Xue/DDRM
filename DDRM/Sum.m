function d = Sum(dt,H,t)

previous = t-2^(H-1)+1;
d = sum(dt(previous:t));

end
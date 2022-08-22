function nv = perturb(v,ep)

p = 1/2+v/2*(exp(ep)-1)/(exp(ep)+1);

 if v == 0
    if rand(1)<0.5
        nv = 1;
    else
        nv = -1;
    end
    
 else
     
    if rand(1)<p
        nv = 1;
    else
        nv = -1;
    end
 end
        
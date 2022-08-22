function [fre_new,var_new,n] = Estimate(hv,h,ep,f,var,t)

uvar = ((exp(ep)+1)/(exp(ep)-1))^2;
n = length(hv);

if t==1 
    fre_new = sum(hv)/n;
    var_new = uvar/n;
else  
    ind_leaf = find(h==1);
    n1 = length(ind_leaf);
    s1 = sum(hv(ind_leaf));
    
    ind_top = find(h~=1);
    n0 = length(ind_top);
    s0 = sum(hv(ind_top));
    
    if n1==n       % t is odd
        fre_new = f(t-1)+(s1)/n1;
        var_new = var(t-1)+uvar/n;
    else
        a = h(ind_top(1));
        w1 = 1/(var(t-1)+uvar/n1);
        tp = t-2^(a-1);
        if tp~=0  % multiple trees
            w2 = 1/(var(tp)+uvar/n0);
            w = w1/(w1+w2);
            f1 = f(t-1)+s1/n1;
            f2 = f(tp)+s0/n0; 
            fre_new = w*f1+(1-w)*f2;
            var_new = (w^2)*(var(t-1)+uvar/n1)+(var(tp)+uvar/n0)*(1-w)^2;
        else   % one complete tree
            w2 = 1/(uvar/n0);
            w = w1/(w1+w2);
            f1 = f(t-1)+s1/n1;
            f2 = s0/n0;  %*
            fre_new = w*f1+(1-w)*f2;
            var_new = (w^2)*(var(t-1)+uvar/n1)+(uvar/n0)*(1-w)^2;
        end
    end
end
end
        


    


    
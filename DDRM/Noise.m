function [nv,Alpha] = Noise(v,ep,Alpha,k)

parfor i = 1:length(v)
    if Alpha(i)<=k && v(i)~=0
        Alpha(i) = Alpha(i)+1;
    else
        v(i) = 0;
    end
    nv(i) = perturb(v(i),ep);
end


    
    
    
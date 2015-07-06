function n = one_per_n( X )
%ONE_PER_N Summary of this function goes here
%   Detailed explanation goes here
    N=1;
    while(1)
        sum=0;
        for i=1:N
            sum=sum+(1/i);
        end
        if(sum>=X)
            n=N;
            return;
        end
        N=N+1;
        if(N>10000)
            n=-1;
            return;
        end
    end
end


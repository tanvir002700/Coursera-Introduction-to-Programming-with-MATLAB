function [ Ret ] = myprime( N )
%MYPRIME Summary of this function goes here
%   Detailed explanation goes here
    if(N==1)
        Ret=false;
        return;
    end
    for i=2:N/2
        if(mod(N,i)==0)
            Ret=false;
            return;
        end
    end
    Ret=true;
end


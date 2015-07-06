function [ output ] = large_elements( X )
%LARGE_ELEMENTS Summary of this function goes here
%   Detailed explanation goes here
    output=[];
    [x,y]=size(X);
    for i=1:x
        for j=1:y
            if(i+j<X(i,j))
                output(end+1,1)=i;
                output(end,2)=j;
            end
        end
    end
end


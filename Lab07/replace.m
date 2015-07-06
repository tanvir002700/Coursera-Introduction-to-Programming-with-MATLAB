function [ v ] = replace( M,c1,c2 )
%REPLACE Summary of this function goes here
%   Detailed explanation goes here
    x=length(M);
    for i=1:x
        y=length(M{i})
        for j=1:y
            if(M{i}(j)==c1)
                M{i}(j)=c2;
            end
        end
    end
    v=M;
end


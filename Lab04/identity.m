function [ mt ] = identity( n )
%IDENTITY Summary of this function goes here
%   Detailed explanation goes here
    mt=zeros(n,n);
    for i=1:n
        for j=1:n
            mt(i,j)=(i==j);
        end
    end
end


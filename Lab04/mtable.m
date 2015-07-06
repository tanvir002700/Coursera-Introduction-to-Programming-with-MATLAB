function [ mt,s ] = mtable( n,m )
%MTABLE Summary of this function goes here
%   Detailed explanation goes here
    mt=zeros(n,m);
    for i=1:n
        for j=1:m
            mt(i,j)=i*j;
        end
    end
    a=sum(mt);
    s=sum(a);
end


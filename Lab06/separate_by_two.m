function [ even,odd ] = separate_by_two( A )
%SEPARATE_BY_TWO Summary of this function goes here
%   Detailed explanation goes here
    even=A(mod(A,2)==0);
    odd=A(mod(A,2)==1);
    even=reshape(even,1,[]);
    odd=reshape(odd,1,[]);
end


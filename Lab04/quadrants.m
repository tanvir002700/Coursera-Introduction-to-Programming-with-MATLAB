function [ Q ] = quadrants( n )
%QUADRANTS Summary of this function goes here
%   Detailed explanation goes here
Q=ones(2*n,2*n);
Q(1:n,n+1:2*n)=2;
Q(n+1:2*n,1:n)=3;
Q(n+1:2*n,n+1:2*n)=4;
end


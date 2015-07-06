function [ B ] = divvy( A,K )
%DIVVY Summary of this function goes here
%   Detailed explanation goes here
    A(mod(A,K)~=0)=A(mod(A,K)~=0)*K
    B=A;
end
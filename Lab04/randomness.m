function [ mt ] = randomness( limits,n,m )
%RANDOMNESS Summary of this function goes here
%   Detailed explanation goes here
    mt=fix(1+rand(n,m)*limits)
end


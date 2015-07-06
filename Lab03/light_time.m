function [Time,KM] = light_time( v )
%LIGHT_TIME Summary of this function goes here
%   Detailed explanation goes here
KM=v.*1.609;
Time=KM./300000;
Time=Time./60;
end
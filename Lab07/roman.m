function [ ret ] = roman( str )
%ROMAN Summary of this function goes here
%   Detailed explanation goes here
    ret=uint8(0);
    Dic={'I','II','III','IV','V','VI','VII','VIII','IX','X','XI','XII','XIII','XIV','XV','XVI','XVII','XVIII','XIX','XX'};
    for i=1:length(Dic)
        if(strcmp(Dic{i},str))
            ret=uint8(i);
            return;
        end
    end
end


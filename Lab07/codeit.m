function [ str ] = codeit( txt )
%CODEIT Summary of this function goes here
%   Detailed explanation goes here
    str=[];
    for a=txt
        if(a>='a' && a<='z')
            c=char(('z'-(a-'a')));
            str(end+1)=c;
        elseif(a>='A' && a<='Z')
            c=char(('Z'-(a-'A')));
            str(end+1)=c;
        else
            str(end+1)=a;
        end
    end
    str=char(str);
end


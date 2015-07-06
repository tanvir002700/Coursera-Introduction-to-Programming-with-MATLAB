function [ ret ] = June2015
%JUNE2015 Summary of this function goes here
%   Detailed explanation goes here
    ret=cell(30,3);
    Day=['Mon' ; 'Tue' ; 'Wed' ; 'Thu' ; 'Fri' ; 'Sat' ; 'Sun'];
    ptr=1;
    for i=1:30
        ret{i,1}='June';
        ret{i,2}=i;
        ret{i,3}=Day(ptr,1:end);
        ptr=ptr+1;
        if(ptr==8)
            ptr=1;
        end
    end

end


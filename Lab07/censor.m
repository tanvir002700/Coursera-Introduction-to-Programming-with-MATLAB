function out = censor(strs,str)
    out = {};                               % creates the output from scratch
    for ii = 1:length(strs)                 % for each string in the cell vector
        if isempty(strfind(strs{ii},str))   % if the substring is not found
            out = [out strs{ii}];           % the current string goes into the output
        end
    end
end
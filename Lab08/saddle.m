function s = saddle(M)
    [r c] = size(M);
    s = [];
    if r > 1
        cols = min(M);          % find the min value in each column
    else
        cols = M;               % vector is a special case, min would give a single value
    end
    if c > 1
        rows = max(M');         % find the max value in each row
    else
        rows = M;               % vector is a special case, max would give a single value
    end
    for ii = 1:c                % visit each column
        for jj = 1:r            % and each row, that is, each element of M
            if M(jj,ii) == cols(ii) && M(jj,ii) == rows(jj) % if both conditions hold
                s = [s; jj ii];                             % saddle point! Let's add it!
            end
        end
    end
end
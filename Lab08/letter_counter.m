function n = letter_counter(fname)
    fid = fopen(fname,'r');
    if fid < 0
        n = -1;
    else
        x = fread(fid,inf,'char');      % read entire file
        x = x(isletter(char(x)));       % pick the letters
        n = length(x);                  % count them
        fclose(fid);
    end
end
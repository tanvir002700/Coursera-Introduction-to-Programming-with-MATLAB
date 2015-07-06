function A = roman2 (R)
% This function initially assumes the supplied input is valid. If it is not valid,
% the result, when converted back to Roman, will differ from the original input.
    Roman = 'IVXLC';
    Arabic = {1 5 10 50 100};
    LastValue = 0;                  % V is value, LastValue is last V
    A = uint16(0);
    for k = length(R):-1:1          % scan backward from last character
        P = strfind(Roman,R(k));    % search list of valid Roman characters
        if isempty(P)               % if invalid
            V = 0;                  % value is zero
        else                        % else
            V = Arabic{P};          % value is Arabic equivalent
        end
        if V<LastValue              % if subtractive situation
            A = A-V;                % subtract this value
        else                        % else
            A = A+V;                % add this value
        end                         % (in either case, V=0 did nothing)
        LastValue = V;              % update last value used
    end
    if A>=400 || ~strcmp(R,A2R(A))  % if out of range or result does
        A = uint16(0);              % not generate original string
    end                             % send back zero
end

% convert Arabic to Roman
function R = A2R (A)
% Remove subtraction by including secondary moduli.
    Roman = {'I' 'IV' 'V' 'IX' 'X' 'XL' 'L' 'XC' 'C'};
    Arabic = {1 4 5 9 10 40 50 90 100};
    R = ''; k = 9;
    while k>0                       % remove larger moduli first
        if A>=Arabic{k}             % if value is at least current modulus
            A = A-Arabic{k};        % remove modulus from value
            R = [R Roman{k}];       % append Roman character
        else                        % else
            k = k-1;                % consider next smaller modulus
        end
    end
end
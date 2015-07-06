function grade = letter_grade( score )
%LETTER_GRADE Summary of this function goes here
%   Detailed explanation goes here
    if (score>=91)
        grade='A';
    elseif (score>=81 && score<=90)
        grade='B';
    elseif (score>=71 && score<=80)
        grade='C';
    elseif (score>=61 && score<=70)
        grade='D';
    else
        grade='F';
    end
end


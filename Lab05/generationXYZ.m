function gen = generationXYZ( yr )
%GENERATIONXYZ Summary of this function goes here
%   Detailed explanation goes here
    if (yr<1966)
        gen='O';
    elseif (yr>=1966 && yr<=1980)
        gen='X';
    elseif (yr>=1981 && yr<=1999)
        gen='Y';
    elseif (yr>=2000 && yr<=2012)
        gen='Z';
    else
        gen='K';
    end
end


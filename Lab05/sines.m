function [s1 s2 sums] = sines(pts,amp,f1,f2)
    if nargin < 1, pts = 1000;    end
    if nargin < 2, amp = 1;       end
    if nargin < 3, f1 = 100;      end
    if nargin < 4, f2 = f1*1.05;  end
    t = 0 : 2*pi/(pts-1) : 2*pi;
    s1 = amp * sin(f1*t);
    s2 = amp * sin(f2*t);
    sums = s1 + s2;
end

% The sin() function has a full period between 0 and 2*pi.
% To set up the vector t, dividing by (pts-1) is needed
% because n points in a line define (n-1) consecutive segments
% and not n. For example, two points define a single line segment.
% The function call sin(f1*t) will create exactly f1 full periods
% using vector t defined above.
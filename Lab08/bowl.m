function score = bowl(balls)
    index = 0;                                  % index into balls
    first = 1;                                  % multiply next ball
    second = 1;                                 % multiply ball after next
    score = 0;                                  % cummulative sum
    if sum(balls > 10 | balls < 0) > 0          % single hit must be between 0 and 10 inclusive
        score = -1;                             % error!
        return;
    end
    for ii = 1:10                               % first ten frames
        index = index + 1;                      % take next ball
        if index > length(balls)                % not enough balls
            score = -1;                         % error!
            return;
        end
        score = score + first * balls(index);   % count score including extra from previous strike or spare
        first = second;                         % move multiplier value from second to first
        second = 1;                             % reset multiplier for the ball after next to 1
        if balls(index) == 10                   % strike
            first = first + 1;                  % so next counts extra
            second = 2;                         % and so is the one after next
            continue;                           % go to next frame, there is no second ball in this one
        end
        index = index + 1;                      % take next ball
        if index > length(balls)                % not enough balls
            score = -1;                         % error
            return;
        end
        score = score + first * balls(index);           % count score including extra from previous strike
        first = second;                                 % move multiplier value from second to first
        second = 1;                                     % reset multpilier for the ball after next to 1
        if balls(index) + balls(index -1) == 10         % spare
            first = first + 1;                          % so next counts extra
        elseif  balls(index) + balls(index -1) > 10     % cannot score higher than 10 in a frame
            score = -1;                                 % error!
            return;
        end
    end
    for ii = [first second]                     % max 2 extra balls if needed
        if ii < 2                               % no extra ball here
            break;                              % we are done
        end
        index = index + 1;                      % take next ball
        if index > length(balls)                % not enough balls
            score = -1;                         % error!
            return;
        end
        score = score + (ii-1) * balls(index);  % extra balls: count them one less than a normal ball
    end
    if index < length(balls)                    % additional ball in the input
        score = -1;                             % error!
    end
end
g = zeros(3,3);

% Start
g(2,2) = 3;

% Find free spots
free_spots = 0;
idx = 1;
for i = 1:9
    if g(i) == 0
       free_spots(idx) = i;
       idx = idx + 1;
    end
end

% Place fruit
g(free_spots(randi(length(free_spots), 1))) = 1;

% Check if the worm head is next to a fruit. If it is, set the head to be
% body and move the head to the fruit. Otherwise, fail
for i = 1:9
    if g(i) == 3
        % Check all around to look for fruit
    end
end
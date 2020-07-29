clear
% Initialise variables
fruit_num = 1;
body_num = 2;
head_num = 3;
successes = 0;

iterations = 5000000;
for i = 1:iterations
    % Resetting variables
    finished = false;
    ticks = 0;
    snake_length = 1;
    g = zeros(3,3);
    g(2,2) = 3;
    head_pos = 5;
    % Run the snake
    while(~finished)
        % Place a fruit
        [free_spots] = FindEmptyPositions(g);
        if ~isempty(free_spots)
            g(free_spots(randi(length(free_spots), 1))) = 1;
        end
        % Check if the worm head is next to a fruit
        [g, head_pos, snake_length] = MoveToFruit(g, head_pos, snake_length);
        % Stop if the length of the snake is 9
        if snake_length == 9
            finished = true;
        end
        ticks = ticks + 1;
    end
    % If the snake was alive for exactly 8 ticks it is considered a success
    if ticks == 8
       successes = successes + 1; 
    end
end

fprintf('Success rate of %.4f%%\n', successes/iterations*100);
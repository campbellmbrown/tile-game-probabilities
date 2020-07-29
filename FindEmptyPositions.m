function [free_spots, idx] = FindEmptyPositions(g)
idx = 1;
free_spots = [];
for i = 1:9
    if g(i) == 0
       free_spots(idx) = i;
       idx = idx + 1;
    end
end
function [g, head_pos] = WriteToGrid(g, head_pos, fruit_pos)

g(head_pos) = 2;        % Head to body
head_pos = fruit_pos;   % Head pos to fruit pos
g(head_pos) = 3;        % Fruit to head

end
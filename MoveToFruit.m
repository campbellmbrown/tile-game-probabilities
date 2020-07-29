function [g, head_pos, snake_length] = MoveToFruit(g, head_pos, snake_length)

if head_pos > 3 % look left
    if g(head_pos - 3) == 1
        [g, head_pos] = WriteToGrid(g, head_pos, head_pos - 3);
        snake_length = snake_length + 1;
        return
    end
end
if head_pos < 7 % look right
    if g(head_pos + 3) == 1
        [g, head_pos] = WriteToGrid(g, head_pos, head_pos + 3);
        snake_length = snake_length + 1;
        return
    end
end
if rem(head_pos - 1, 3) > 0 % look up
    if g(head_pos - 1) == 1
        [g, head_pos] = WriteToGrid(g, head_pos, head_pos - 1);
        snake_length = snake_length + 1;
        return
    end
end
if rem(head_pos, 3) > 0 % look down
    if g(head_pos + 1) == 1
    	[g, head_pos] = WriteToGrid(g, head_pos, head_pos + 1);
        snake_length = snake_length + 1;
        return
    end
end

end
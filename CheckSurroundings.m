function [output] = CheckSurroundings (y,x,outlineArray)
 
total = 0;
    for i = x-1:x+1
        for j = y-1:y+1
            if (i==x && j==y)
                continue
            elseif (outlineArray(j,i) == 1)
                total = total + 1; %this counts the number of alive cells
            end
        end
    end
    
    if ((total == 2 && outlineArray(y,x) == 1) || total == 3)
        output = 1; %makes the cell alive if conditions are met
    else 
        output = 0;%the cell will die if the conditions are not met
    end
end

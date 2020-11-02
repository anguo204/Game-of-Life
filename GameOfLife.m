function [output] = GameOfLife (inputArray)
    
    [xDim,yDim] = size(inputArray); %finds size of inputArray matrix
    outlineArray = zeros(xDim+2,yDim+2);
    
    for n = 2:yDim+1
        for m = 2:xDim+1
            outlineArray(n,m) = inputArray(n-1,m-1); % sets values of input 
            % matrix to outline array so that there is a  border of 0's
        end
    end
    
    output = zeros(size(inputArray)); % creates matrix the smae size as input matrix
    
    for n = 2:yDim+1
        for m = 2:xDim+1
            output(n-1,m-1) = CheckSurroundings(n,m,outlineArray); 
            %this calls the CheckSurroundings function
        end
    end
end

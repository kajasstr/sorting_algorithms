% Bubble Sort is a simple, intitive sorting algorithm that repeatedly steps
% through the list, compares adjacent items and swap them if they are in
% the wrong order
% Slow for large datasets

function sortedArray = bubbleSortFunction(array)
% BUBBLESORT sorts an array in ascending order using 
% the Bubble Sort algorithm

    n = length(array);  % Get the lenght of the array
    for i = 1:n-1
        for j = 1:n-i
            if array(j) > array(j+1)
                % Swap the elements if they are in the wrong order
                temp = array(j);
                array(j) = array(j+1);
                array(j+1) = temp;
            end
        end
    end
    sortedArray = array;  % Return the sorted array
end
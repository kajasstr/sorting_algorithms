% Quick Sort is a divide-and-conquer algorithm that selects
% a pivot and positions the array into two sub-arrays:
% one with elements less than the pivot and one with elements greater
% It recursively sorts the sub-arrays
% Fast for large datasets

function sortedArray = quickSortFunction(array)
% QUICKSORT sorts an array in ascending order using
% the Quick Sort algorithm

    if length(array) <= 1
        % Base case: an array of 0 or 1 elements is already sorted
        sortedArray = array;
    else
        % Choose the pivot as the last element of the array
        pivot = array(end);
        % Partititon the array into the sub-arrays
        left = array(array < pivot);  % Elements less than the pivot
        right = array(array > pivot);  % Elements greater than the pivot
        equal = array(array == pivot);  % Elements equal to the pivot

        % Recursicely sort the sub-arrays and concatenate
        sortedArray = [quickSort(left), equal, quickSort(right)];
    end
end
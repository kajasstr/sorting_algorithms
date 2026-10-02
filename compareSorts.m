% Compare the performance of Bubble Sort and Quick Sort algorithms

% Initialize array sizes for testing
arraySizes = [1000, 2000, 5000, 10000, 20000, 50000];
bubbleSortTimes = zeros(size(arraySizes));
quickSortTimes = zeros(size(arraySizes));

% Measure execution times
for k = 1:length(arraySizes)
    % Generate a random array of the current size
    testArray = randi(1000, 1, arraySizes(k));

    % Measure Bubble Sort performance
    tic;  % Start timer
    bubbleSort(testArray);  % Call Bubble Sort
    bubbleSortTimes(k) = toc;  % Stop timer and save the time

    % Measure Quick Sort performance
    tic;  % Start timer
    quickSort(testArray);  % Call Quick Sort
    quickSortTimes(k) = toc;  % Stop timer and save the time
end

% Display the results
fprintf("Bubble Sort times: %.6f seconds\n", bubbleSortTimes);
fprintf("Quick Sort times: %.6f seconds\n", quickSortTimes);

% Plot the results
figure;
plot(arraySizes, bubbleSortTimes, "LineWidth", 2, "Color", "#560591", ...
    "DisplayName", "Bubble Sort");
hold on;
plot(arraySizes, quickSortTimes, "LineWidth", 2, "Color", "#00f0ff", ...
    "DisplayName", "Quick Sort");
xlabel("Array Size");
ylabel("Execution Time (seconds)");
title("Comparison of the Bubble Sort and Quick Sort execution times")
legend("Location", "northwest");
grid on;

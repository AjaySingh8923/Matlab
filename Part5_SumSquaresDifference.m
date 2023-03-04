clear all
N=input('Enter The Number = ')
Number=1:N;
% step 1: Find The squares of sum of the first N numbers
square_of_sum = sum(Number)^2;
% step 2: Find The  sum of squares of the first N numbers
sum_of_square = sum(Number.^2); %Example as nested Function  2^2 + 3^3

% step 3: Find The Result of Difference of Step 1and Step 2
 Difference = square_of_sum - sum_of_square




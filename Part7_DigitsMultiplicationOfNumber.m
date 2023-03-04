clear all
%  Step 1:Generate the number from 1 to million 
numbers=1:1000000;
%  Step 2:concatenate the number to get one big number
string_of_numbers = num2str(numbers);
% >> string_of_numbers(1:20) Command window
string_of_numbers = string_of_numbers(~isspace(string_of_numbers));%remove spaces
%  Step 3:Find the number at loaction
%  d1,d10,d100, d1,000 , d10000, d1,00,000
d_1 = string_of_numbers(1);
d_10 = string_of_numbers(10);
d_100 = string_of_numbers(100);
d_1000 = string_of_numbers(1000);
d_10000= string_of_numbers(10000);
d_100000 = string_of_numbers(100000);
d_1000000 = string_of_numbers(1000000);
%Step 4:Compute the d1*d10*d100*d1,000 *d10000 * d1,00,000
Final_answer = str2num(d_1)*str2num(d_10)*str2num(d_100)*str2num(d_1000)*str2num(d_10000)*str2num(d_100000)*str2num(d_1000000);
fprintf('The answer of multiplication %d\n',Final_answer);


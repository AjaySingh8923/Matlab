clear all
N=input('Enter The Number : ')
Number= 1:N-1  %(Range start:End )  all no is stores in matrix form

%step 1 :List all the multiple of 3 below N.
%rem(6,3)== 0  Reminder
multiple_of_3 = rem([Number],3) == 0;  % we need to call multiple_of_3

%step 2 :List all the multiple of 5 below N.
multiple_of_5 = rem([Number],5) == 0; 

%step 3a :Make a list of  the multiple of 3 and 5 contain a single copy of common multipliers .
all_multiple = or(multiple_of_3,multiple_of_5); % ADD
values_of_multiples = Number(all_multiple); % Return The index value From Logical Array all_multiple

%      LOGICAL VARIABLE FOR SELECTION IF NUMBER= 5
% all_multiple  Number  Number(all_multiples)
%   0           1            -
%   0           2            -
%   1           3            3
%   0           4            -


%step 3b :sum of  all the contaoned in list obatain in step 3a.
sum(values_of_multiples )
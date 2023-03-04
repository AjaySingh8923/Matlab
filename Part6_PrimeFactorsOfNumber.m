clear all
n=input('Enter The Number =')
%STEP-1:Find the factors of the number N
% factors_of_n = factor(n);% Built in Function
% WE delete step 1 because step covers it all

%STEP-2:Find the prime numbers determined  in step 1
%Unique_factor_of_n = unique(factors_of_n)%single copy of all factor n
% MODIFIED ABove statement AFTER COMMENTING STEP 1
Unique_factor_of_n = unique(factor(n))
%STEP-3:Finf the unique prime numbers determine in step 2
Unique_factor_of_n(isprime(Unique_factor_of_n ))%Give number in place of logical value of n






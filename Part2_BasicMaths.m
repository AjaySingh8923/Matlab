             % Set operations (Union, intersection, complement and others)
             
x = [5 9 8; 4 5 6;8 7 9]
y = [5 9 8 10 11]

intersect(x,y)

[c ia] = intersect(x,y)    %ia specifies indexes
z = [5 9 8]
x
z
[a,b] = intersect(x,z,'rows')
[a,b] = intersect(x,z) %isempty(intersect(A,B))  If it is empty than the statement should return a logical 0 otherwise logical 1

%UNION
union(x,y)
union(x,z,'rows')
setdiff(x,z,'rows')

                  %Computing statistics of the matrices
          
a = [5 8 9;8 7 9;1 2 3]
min(a) % give minimum across coloumn
min(a') % give minimum across row--> 1 way
a
min(a, [], 2)% --> 2 way --give minimum across row
min(a, [], 1)

 a
[M, I] = min(a, [], 2) %show minimum across row and I show index

% MAXIMUM FUNCTION
max(a) 
max(a,[],2)
[M,I] = max(a)
[m,I]= max(a,[],2)%I --> INDEX

 % MEAN
mean(a)         %MEAN ACROSS COLUMN
mean(a,2)       %MEAN ACROSS ROWS
%VARIANCE
var(a)          % VAR IN COLUMN

 %Standard deviation 
std(a)          %across column
std(a')         %across row

sum(a) %sum acrooss column
sum(a') %row wise sum

%Percentile
a
prctile(a,25)  
prctile(a,[25 42])      %ROWS
prctile(a, [25 42], 2)  %column
%MEAN//MODE//MEDIAN
median(a)
mode(a)
min(min(a))      %--> First it compute coloum wise min // AND THEN --> also apply coloum wise min



                         % Handling random numbers
                         
rand(5,1)     %5 rows 1 column matrix    rand means uniform distribution

randn(5)      % normal distribution to generate function

randperm(9)   %random permutaion

randperm(9,3) %specified  by giving arugument

2 + randperm(5,3)   %lower valuue is 1 because we add 2 we get lowest no 3

randi(5)         %give one random value

randi(5,3)       %generate 3X3 matrix with random values 1 to 5

randi(5,3,2)     %generate 3X2 matrix with random values 1 to 5

x = randi(5,3,2) %generate 3X2 matrix with random values 2 to 5

 x = 1+randi(4,3,2)
                   
 
                  %Cross product and dot product
            
                  
                  % Basic logical operation (And, Or and Not)
c = [4 5 6]
d = [5 5 5]
dot(c,d) % ans=[20 + 25 + 30]=[75]

%Another way to do dot multiplication
c.*d

sum(c.*d)

A = [1 2 3; 4 5 6 ;7 8 9]

B = [9 8 7;6 5 4;3 2 1]

dot(A,B) %First column of matix A is multiply by FIRST COLUMN of matrix B

dot(A,B,2)% dot product in  row
dot(A,B,1)% dot product in  column bcz of arugment 1

cross(A,B) %CROSS PRODECT

cross(A,B,2) %CROSS PRODECT Across rows

A = rand(4)

B = rand(4)
 
%cross(A,B) 


A = rand(4,3) % dimension specified in random function thus it does not show error

B = rand(4,3)

cross(A,B) 

          % Basic logical operation (And, Or and Not)
A = [1 5 8 7 0]
B = [1 1 0 2 2 ]
and(A,B)
and(A,0)
and(A,1)           
or(A,B) 
A
B

A(3) = 0 % A = [1 5 8 7 0]   its become        A = [1 5 0 7 0]
A | B  % | represent or
not(A) % any value is zero is nonverted  to 1 vice cersa
A
~A     % not A 



         %  Sign and absolute functions
         
sign(+6)

sign(0)

sign(-1)

sign(3+6i) 

abs(+10) %returns the absolute value  1


abs(-10) %returns the absolute value  -1

abs(0)   %returns the absolute value  0

abs(-0) %returns the absolute value  0

abs(3+6i)

sign(3+6i) 

sign([10 0 +10 -10 ])   % answer is [ 1     0     1    -1 ]   




                           %Converting numbers between different bases
dec2base(300,2)
A=[ 5 8 9 7 ]
dec2base(A,2) % ans is 0101 1000 1001 0111
%base to decimal
base2dec('1000',2) %The number -->that should be converted in Decimal is should be enclosed in ''
base2dec('FF',16) %2-36 specified 

x = base2dec('1111',2)
dec2base(x,16)

 %if u convert any base that is not 10 to other base that is also not 10
 %so we need to 2 steps process i.e.
 
 %step 1 : from that base  to dec
 %step 2 : from dec to the desired base

                      % Discretizing your data
                      
%------------- Script 1 --------------------
data = [1 1 2 3 6 5 8 10 4 4 ]; 
edges = 2:2:10;


Y = discretize(data,edges)


% for the Y for right edge
% bin 1: 2 - 3.99 
% bin 2: 4 - 5.99
% bin 3: 6 - 7.99 
% bin 4: 8 - 10

% for the Y for left edge
% bin 1: 2 - 4
% bin 2: 4.01 - 6
% bin 3: 6.01 - 8 
% bin 4: 8.01 - 10
%------------- Script 2 --------------------

data = [1 1 2 3 6 5 8 10 4 4 ]; 
edges = [1 3 4 7 10 11]; 

Y1 = discretize(data,edges)
Y2 = discretize(data,edges,'Included', 'right')

% for the Y1 
% bin 1: 1 - 2.99
% bin 2: 3 - 3.99
% bin 3: 4 - 6.99 
% bin 4: 7 - 9.99
% bin 5: 10 - 11

% for the Y2 
% bin 1: 1	- 3
% bin 2: 3.01 	- 4
% bin 3: 4.01 	- 7 
% bin 4: 7.01 	- 10
% bin 5: 10.01 	- 11

%------------- Script 3 --------------------

data = [1 1 2 3 6 5 8 10 4 4 ]; 

[Y, E] = discretize(data,3)  % E provide information about the edges   Y contain information regarding data is in which bin

% for the Y 
% bin 1: 1 	- 4
% bin 2: 4.01 	- 8
% bin 3: 8.01 	- 12 

%------------- Script 4 --------------------

data = [1 1 2 3 6 5 8 10 4 4 ]; 

[Y, E] = discretize(data,3,'IncludedEdge','right');

% for the Y 
% bin 1: 1 	- 4
% bin 2: 4 	- 7.99
% bin 3: 8 	- 12 

               %DIFFERENT TYPE OF VARIABLE[Strings,Characters & Logical ]
a= 'hello world'
whos
a(2,:)=a(1,:)
a(3,:) ='hi how are '

a=string('HI HOW ARE YOU')
a=[string('HI HOW ARE YOU') string('HELLO WORLD')]

whos

a=[string('HI HOW ARE YOU') string('HELLO WORLD') ; string('AJAY') string('CLASS')]
a(1,1)
a(2,2)

a=[1,4,5 ; 6 ,7 ,9 ; 8 , 10, 11]
a(3,1)

a =logical([1 0 1 0 ; 1 1 0 1])
%Creating scripts and understanding commenting and semicolon effect

% This is the declaration for the variable b
b =49 ;
% This is the declaration for the variable b
c = 89 ;
% Final result
D= b+c


                       % Data Selection With The Colon Operator
1:5

1:2:10 %step size of 2

-100:2:-90  %OUTPUT  -100   -98   -96   -94   -92   -90

10:-2:0  %OUTPUT   10     8     6     4     2     0

x= rand(10,10)
x(1:3,:) %x=(row specified ,:---> coloumn)
x(1:2:end,:) % x(alternative row select 1:2: end, :-->colum )

%3-D Array of Random Numbers
X = rand([3,2,3])


% Basic maths operations: addition, multiplication, subtraction and powers
a = [1 2 3 ; 9 8 7]
b = [5 8 9 ; 8 7 4]

a-b
% a*b if this operation is performed -->Incorrect dimensions for matrix multiplication

b=b'
a

a*b

%element by element multi
a.*a
b=b'
a.*b

a
b

c=7
d=10
c+d
c-d
c*d
%power
c^2
c^(2/3)
% a^2 show error --> Incorrect dimensions for raising a matrix to a power
% matrix should be square and the power is a scalar

a =[1 2 3 ; 4 3 2 ; 8 9 0]
a^2
a.^2 %dot . do the multiplication process


         % Basic maths operations: computing GCD, LCM, permutations and prime numbers

gcd(10,25)
a = [10 20; 50 90]
b = [10 30;100 180]
gcd(a,b) %size of matrix should be same
gcd(a,10) %pass a no to matrix 

lcm(100,10) 
lcm(10,a) %lcm with each and evry no in a matrix 10 10-20 lcm-->20 the 10-50-->50

isprime(8) %ans =  logical 0
isprime(a) %2×2 logical array
A = [1 2 3 4 5 6 7 8 9]
isprime(A)% answer in format 1×9 logical array
primes(30)
prod(A)%multiply all no in a matrix
A
 %permutaion
perms([1 2 3])
perms([1 2 3 4])
 % TREATING ALL ELEMENT IN MATRIX AS SINGLE MATRIX ELEMENT
perms([5 6 ;8 9 ])


                          % Trignometric math functions
sin(1)
sin(180)%output is in radians
sind(180) % OUTPUT is in Degree Format
sin(1)
asin(0.8415)% OUTPUT get round off

asind(0) % asind give inverse of no
asind(180)% asind give inverse of  degree i.e radians

a = 180
sin(a)

a = [1 2 3; 9 8 7]
sin(a)%-->[sin(1) sin(2) sin(3);sin(9) sin(8) sin(7)

cos(1)
acos(1)%inverse
cosd(1)% bcz of[cos d] it give ouput in degree

tan(1)
tand(1)
atand(1)

rad2deg(3.141)%radian to degree
deg2rad(180)%degree to radian
rad2deg(3.1416)
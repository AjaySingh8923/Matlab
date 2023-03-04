                   %  25 . Computing unique elements
x = [5 9 8; 4 5 6; 7 8 9]
y = unique(x)   % acsending order 4 5 6 7 8 9
y = unique(x(1:2,:)) %rows
y = unique(x(:,1:2)) %colomn
[c, ia] = unique(x) %ia contan indexes
x
[c  ia ib]= unique(x) 
ia'
ib'
c'
 x = [x; 5 9 8]
 unique(x,'rows') % last row  and first row are similar  so it cut of last row
 
                %Determining membership of elements to a matrix
 
x = [5 9 8; 4 5 6; 8 7 9]
ismember(5,x) %value of 5 is in matrix or not
ismember(1,x)
ismember(x,5)  %first argument specifies the item and second argumrnt specifies in where are looking for
 a = [4 5 6]
ismember(a,x)

[C ia] = ismember(a,x) % c values in x ia identify location
[C ia] = ismember([5 9 8],x,'rows')
[C ia] = ismember([5 9 8],x(1:2,:),'rows')
y = [5 9 8]

isequal(x,y) % equal function or not
isequal(x(1,:),y) %logical 0 --> no
isequal(x(1,:),y,x(1,:))

              % 27. Shifting matrix elements
%A = [1:10; 11:20; 21:30; 31:40; 41:50; 51:60 ] %first row 1 to 10 
%cirshift(A, [0, 2])  first argument amount the shift we want on row  &  second argument shows shift on column
%cirshift(A, [0, -2])% - value shift left 2 values // A remains same
%cirshift(A, [2, 0])% push row 2 downwards
%cirshift(A, [-2, 0])% push row 2 upwards        
% CIRSHIFT IS UNRECOGNIZED IN TTHIS MATLAB

             % 28. Determinant, inverse and diagnal elements
 a = [4 5 6; 8 9 7; 8 7 9]
 inv(a)
 a^-1 
 det(a)
 diag(a)
 v = [1 2 8 7 9]
 diag(v)   % diagonal on row matrix main diagonal matrix
 diag(v,1) % diagonal on row matrix skip frst column
 diag(v,2)              
        
            % Relational operation  Matrix
 A = [5 6 9]
 ge(A,6) % greater than 6--  logiccal array {0 1 1}
 A >= 6
 X = A(ge(A,6)) % see the corresponding result
 B = [5 8 7]
 ge(A,B)  %element compare greater than one by one  -- Ans [1 0 1]
 B = [5 8 7; B] % two rows [5 8 7; 5 8 7 ]

ge(A,B) % Ans= [1 0 1 ;1 0 1] 

A
A >= B

gt(A,B) % in this case it ignore the equality all elemnts are greater are represent byy 0
A > B

le(A,B) % less than or equal
A <= B
 
lt(A,B) %less than
 A < B
 
 ne(A,B) %Not equal to-- logical array
 %Compare strings
 C = 'c'
 A = 'abc' 
 ne(A,C) %[1 1 0] equal huwa toh zero 


                    % 30. Commonly used Matrices
 zeros(5)   % ALL THE MATRIX OF 5x5 IS ZERO
 zeros(5,2) % first two matrix is ZERO
 ones(5)    % ALL THE MATRIX OF 5x5 IS ONE
 ones(5,4) 
 magic(5)    % IT CREATE A MATRIX ROWS AND COLUMMN ARE EQUAL
 magic(3)   
   
                     % 31 Sorting matrix values
 a = [1 5 8 7 4 5 2 1 4 9 6 45]

 sort(a) %ascending order
 sort(a,'descend') %decrease order bde se chota
 [b, b1] = sort(a,'descend')% b1 tell about corresponding index value

 a = [8 7 9 5; 4 5 8 7; 1 2 4 5]
 sort(a) 
 sort(a,2)% 2 row in acending

 sort(a,2,'descent') % column wise
 [b b1] = sort(a,2,'descent') 

 a = [string('hello') string('world') string('Nouman') string('Azam')]
 a
 sort(a)

 a = [string('Hello') string('World') string('Nouman') string('azam')]
 sort(a)


                        % 32. Size and length computation
 A = [1 2 3; 4 5 6; 7 8 9]
 size(A) % no of colums and rows

 [row col] = size(A) 

 A = [1 2 3 4; 4 5 6 6 ; 7 8 9 7]
 [row col] = size(A)

 length(A) %if no colums/rows are more it give its value

 a = 'how are you man' 
 length(a)

 whos 
 
 a = string('how are you man')
 length(a) 
 strlength(a) % tell abt no of string character

 whos 
                    % 33. Concatenating Matrices
  A = rand(3) 
  B = rand(1,3) 
  C = [A;B] % combine matrix of both A and B
  B = rand(3) 
  C = [A B] % combine matrix co;umn wise 6 colums


         % 34. Finding non-zero elements
   X = [0 0 1 2; 5 4 0 6; 8 7 9 0] 
   find(X) % find index colum wise of nonxero number
   find(X,3) % it return first three index value of non zero number
   find(X,3, 'Last') % it return first three index value of non zero number from end
   [row, col] = find(X) 
   x
   [row, col] = find(X,3) % gives index abt first 3 non zero no in row and coloum wise
   
   
        % 35. Frequency of values within a vector
   
   X = [4 4 4 5 5 5 8 9 8 7 8 8 7]
   whos
   tabulate(X) % display no how many time it repeated also give percentage
   X = [4 5 5; 8 8 7; 9 6 6]
   tabulate(X(1,:)) % Apply for 1 row of a matrix
   tabulate(X(:,1)) % Apply for 1 colum of a matrix
   tabulate([4 4 4 5 5 5 6 6 6 3 3 2 1 4 5])

                       %42. Symbolic variables
    
  a=5/3         % it devide
  a = sym(5/3)  % give same exact value 5/3

  syms a     % output a
  syms a b c 

  a = sym('a')
  syms a 
  phi = (1+sqrt(sym(5)))/2 
  f = phi^2 + phi 
   
  syms a b c x 
  f = a*x^2 + b*x + c %quadratic equation
    
    
             % 43. Differentiation and Integration using symbolic variables

 syms x 
 f = sin(x)^2 
 diff(f) 

 syms x y 
 f = sin(x)^2 + cos(x)^2 

 diff(f) % By default it diffentiate with respect to x
 diff(f,y) % Diffentiate with respect to Y
 diff(f,y,2)  % Diffentiate with respect to Y 2 is second order deritive
 diff(f,2) 
 diff(diff(f)) %diff two time

 int(f)  %integration
 int(f,y) 
 int(f,1,10) %integration Lower limit, upper limit
         
                     
                   %44 Solving Equations
      
 syms x 
 f = x^3 + 6*x^2 == 6 - 11*x 
 solve(f)

 f = x^3 + 6*x^2 + 6 - 11*x 
 solve(f) 

 f = 6*x^2 - 6*x^2*y + x*y^2 - x*y + y^3 - y^2 == 0
 solve(f) 
 solve(f,y) % with respect to y

 syms x y z
 f = z == 4*x 
 f1 = x == y 
 f2 = z == x^2 + y^2 
 [x, y, z] = solve(f,f1,f2)

 syms x f %fix the number 
 f =  x^3 + x^2 
 subs(f,5) %subs means substitude

 syms x y f 
 f =  x^3 + y^2 
 subs(f,5)
 subs(f,y,5) % substitude the value of 5
 subs(f,y,x) % substitude the value of y wuth respect to x
 
 f = 20*x^3 + 10 *x^2 
 sym2poly(f)  % it is used to find the polynomial

 
                    % 45. Symbolic Functions

 syms x y 
 f(x,y) = 2*x^2 + 3*y^2 % Create Function
 diff(f(x,y),2,y)     %Differntiate 2 order with respect to y
 diff(f(x,y),1,x)

 f(y+1,y)             %substitue y+1 in place of X format
 f(2,3)            

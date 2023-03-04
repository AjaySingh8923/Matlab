                    % INPUT/OUTPUT COMMAND
input('Enter The Number')
x=input('P{lease Enter the Number}')
x = input('Please Enter A Number','s')
disp('Ajay Singh'); 
a=10;
disp(a)
                
                      %48. More input output commands
  
 menu('Select Courses,''Matlab', 'c++', 'Java'); %Create Menu bar With these OPtions
 fprintf('Hello World'); 
 fprintf('Hello World\n'); 

 x = 3
 fprintf('Hello World %d',x); 
 fprintf('Hello World %s \n',x); %s= string value

 A1 = [9.9, 9900];
 A2 = [8.8,  7.7 ; ...
      8800, 7700];

 formatSpec = 'X is %4.2f meters or %8.3f mm\n';
 fprintf(formatSpec,A1,A2)



                    % 49. Plotting data with MATLAB
 x = [5 8 9 7 6 5]
 y = [4 5 8 7 9 6 ]
 plot(x,y)
 plot(x) 

 x = magic(6) 
 plot(x,y)  

 plot(x,y,'*')% If we dont want Line 

 plot(x,y,'--') %Plot is show by --

 plot(x,y,'Color',[0,0.7,0.9])
 plot(x,y,'Color',[0,0.7,1.0])
 plot(x,y,'Color',[0,0.7,0.9]); title(2-D line plot); xlabel('x-axis'); ylabel('values'); 

             % 50 Plotting 3-D data
 A = [1 5 0 7 0] 
 B = [1 1 0 2 3 ]
 C = [5 8 7 9 6]

 plot3(A,B,C) %Plot the values
 stem3(A,B,C) %
 impz(A,B,C)  %

                  %51 More on plotting options
 
x = rand(10,1);% Column vectors
y = rand(10,1);
Z = rand(10,1);

plot(x,y); 
figure, plot(x,y);  % for holding a plot so that it is not over written 

subplot(2,2,1), plot(x,y); %sub plote(2,2) means 2 rows two column subplote(row,column,axis)
subplot(2,2,2), plot(x,z); 
subplot(2,2,3), plot(y,z); 
subplot(2,2,4), plot(x,x); 

                % 52. Bar graphs

y = [20 25 30 50 90 80];
%bar(y)
x = 2000:2005; % give x axis value
bar(x,y); % also try bar(x,y,0.1 )

y = [20 25 30 50 90 80; 50 60 70 80 90 100]; % multiple row value
bar(y); 
bar(y,'stacked'); %stack for bar repsentation i e row
barh(y); % horizontal bar desplay

barh(x,y); 
barh(x,y,0.4); %change the width
barh(y,'stacked'); 


           %   53. Combining plots with hold on
x = 0:0.2:10;  % 0 to 10 with steps size 2

y1 = sin(x);
plot(x,y1); 

hold on
y2 = sin(x/2); 
plot(x,y2); %Two diffent plot
hold off
figure,plot(x,y2); %show only one figure

y3 = 2*sin(x); 
scatter(x,y3) %scatter plot
bar(x,y3)     %bar plot

          % 54. Interacting with the plot using the brush tool

A = [57 59 60 100 59 58 57 58 300 61 62 60 62 58 57];
X = 1:15;
scatter(X,A); 

           % 55. Two y-axis on the same plot
month = 1:12; % month 1 to 12
percep = [3.4 3.3 4.3 3.7 3.5 3.7 3.4 3.4 3.4 3.9 4.0 3.8];
temp = [16 25 40 58 59 70 77 77 65 56 47 34]; 

yyaxis left
plot(month,percep);  % try with bar(month,percep) also
ylabel('percipitation'); 
xlabel('month'); 

yyaxis right 
plot(month,temp); 
ylabel('temperature'); 


          %56. Animated Line
h = animatedline; 
x = 1:1000; 
y = sin(x); 

for i=1:length(x) % loop 1 to 1000
	addpoints(h,x(i),y(i));  % add points
	drawnow; 
end


% 57 Checking for existence of scripts, files, folders, variables or functions

exist X 
exist html % show this is present in directory
exist Analysis_1.m
exist sort











y = [20 25 30 50 90 80];

x = 2000:2005; 

bar(x,y); % also try bar(x,y,0.1 )

y = [20 25 30 50 90 80; 50 60 70 80 90 100]; 

bar(y); 

bar(y,'stacked'); 

barh(y); 

barh(y,'stacked'); 

barh(x,y); 
barh(x,y,0.4); 
        
%{
this program was designed to take the number of letters in one's last name.
then it would be paired with a random number between 1-3.
finally using the quadratic formula, the roots will be calculated based on those two numbers.
%}

name = 'vo'; % variable 'name' created equal to last name
n = size(name,2); % variable "n" created equal to length of variable 'name'
z = (randi([1 3],3,1)) * n % generates 3x1 vector "z" and prints on screen
[a,b,c] = deal(z(1,1),z(2,1),z(3,1)); % assign "z" values to variables "a","b", and "c"
x1 = real(-b+sqrt(b^2-(4*a*c)))/(2*a); % assign variables "x1" and "x2" to quadratic formula
x2 = real(-b-sqrt(b^2-(4*a*c)))/(2*a);
fprintf(1,'The two roots are x1 = %.2f and x2 = %.2f',x1,x2) %  roots given in a printed statement

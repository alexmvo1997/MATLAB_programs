name = 'vo'; % ---- Step 2 ---- variable 'name' created equal to last name
n = size(name,2); % ---- Step 3 ---- variable "n" created equal to length of variable 'name'
z = (randi([1 3],3,1)) * n % ---- Step 4 & 5 ---- generates 3x1 vector "z" and prints on screen
[a,b,c] = deal(z(1,1),z(2,1),z(3,1)); % ---- Step 6 ---- assign "z" values to variables "a","b", and "c"
x1 = real(-b+sqrt(b^2-(4*a*c)))/(2*a); % ---- Step 7 ---- assign variables "x1" and "x2" to quadratic formula
x2 = real(-b-sqrt(b^2-(4*a*c)))/(2*a);
fprintf(1,'The two roots are x1 = %.2f and x2 = %.2f',x1,x2) % ---- Step 8 ---- roots given in a printed statement
%{
the goal of this MATLAB program was to take a users input and calculate the area based on the given input. 
if the user failed to input a valid number, it would randomly assign an integer from 1-8.
it will then ask the user if they would like to input another number.
if the user declined, then the input will be used to calculate the area of a circle.
if the user entered another number, then the area of a square/rectangle will be used.
if the user entered 2 inputs, the shape will be assumed to be a square or rectangle based on whether or not the inputs equalled each other.
} 

x = str2double(input('Please enter a number: \n', 's')); % asks user to input a number

if isnan(x) % checks if input is a number
    for i = 1:3 % allows the user 3 attempts
        x = str2double(input('Please try again with a number: \n', 's'));
        i = i + 1;
        if ~isnan(x)
           break;
        else
        end
        if i > 3 % if user fails 3 times to input a valid integer, a random number between 1 - 8 will be used
            x = randi(8,1);
            fprintf('Using random number: %d \n', x);
        else
        end
    end
else
end

if isnumeric(x) % calls the computeArea function
    prompt = input('Would you like to use another input? (y/n): \n', 's'); % asks user if they would like to enter another input for the function
    if prompt == 'y'
        x2 = str2double(input('Please enter a number: \n', 's')); % note: for some reason I was getting a parse error whilst trying to use "2x" as a variable name so I used "x2" instead
        if isnan(x2) % checks if 2nd input is a number
            for i = 1:3 % allows user 3 attempts
                x2 = str2double(input('Please try again with a number: \n', 's'));
                i = i + 1;
                if ~isnan(x2)
                   computeArea(x, x2);
                   break;
                else
                end
                if i > 3 % if user fails 3 times to input a valid integer, a random number between 1 - 8 will be used
                    x2 = randi(8,1);
                    fprintf('Using random number: %d \n', x2);
                    computeArea(x, x2);
                else
                end
            end
        else
            computeArea(x, x2);
        end
    else
        computeArea(x);
    end
else
end

function [area, msg] = computeArea(n1, n2) % creates a function named computeArea to compute the area with the user given values

switch nargin
    case 1 % will be used if one input is given
        area = pi*(n1^2);
        msg = 'circle';
        fprintf('The shape is a %s with area %0.5f\n', msg, area);
    case 2 % will be used if 2 inputs are given
        if (n1 == n2) % equal inputs will be assumed to be a square
            area = n1*n2;
            msg = 'square';
            fprintf('The shape is a %s with area %0.5f\n', msg, area);
        else % not equal will be assumed to be a rectangle
            area = n1*n2;
            msg = 'rectangle';
            fprintf('The shape is a %s with area %0.5f\n', msg, area);
        end
end
end

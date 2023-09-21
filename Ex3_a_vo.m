x = str2double(input('Please enter a number: \n', 's'));

if isnan(x) % ---- Step 1 ----
    for i = 1:3
        x = str2double(input('Please try again with a number: \n', 's'));
        i = i + 1;
        if ~isnan(x)
           break;
        else
        end
        if i > 3
            x = randi(8,1);
            fprintf('Using random number: %d \n', x);
        else
        end
    end
else
end

if isnumeric(x) % ---- Step 3 ----
    prompt = input('Would you like to use another input? (y/n): \n', 's');
    if prompt == 'y'
        x2 = str2double(input('Please enter a number: \n', 's')); % note: for some reason I was getting a parse error whilst trying to use "2x" as a variable name so I used "x2" instead
        if isnan(x2)
            for i = 1:3
                x2 = str2double(input('Please try again with a number: \n', 's'));
                i = i + 1;
                if ~isnan(x2)
                   computeArea(x, x2);
                   break;
                else
                end
                if i > 3
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

function [area, msg] = computeArea(n1, n2) % ---- Step 2 ----

switch nargin
    case 1
        area = pi*(n1^2);
        msg = 'circle';
        fprintf('The shape is a %s with area %0.5f\n', msg, area);
    case 2
        if (n1 == n2)
            area = n1*n2;
            msg = 'square';
            fprintf('The shape is a %s with area %0.5f\n', msg, area);
        else
            area = n1*n2;
            msg = 'rectangle';
            fprintf('The shape is a %s with area %0.5f\n', msg, area);
        end
end
end
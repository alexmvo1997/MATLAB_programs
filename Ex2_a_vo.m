%{
this program will take a user's input and perform a quick currency
conversion of pre-set amounts
%}

Xrate1 = 1.03; % this is the Euro equivalent of 1 USD at the time of writing this program and is used in conversion calculation
Xrate2 = 149.00; % this is the Yen equivalent of 1 USD at the time of writing this program and is used in conversion calculation
y_or_n = "y"; % initializes the main while loop

% main while loop
while (y_or_n == "y")

convPrompt = "Between USD, EUR, & JPY, which currency would you like to convert? (please enter as USD to JPY or JPY to EUR, etc.): "; % asks user for input with specific entry instructions
convPromptIP = input(convPrompt, 's');
num = [1, 2, 5, 10, 50]; % default currency values to be converted

    % covers all the possible combinations given the available choices
    switch (convPromptIP)
        
        case "USD to EUR"
            usd2eur = num / Xrate1;
            results1 = compose("%.0f USD equals %.2f EUR\n", num(:), usd2eur(:));
            fprintf('%s', strjoin(results1))
    
        case "USD to JPY"
            usd2jpy = num * Xrate2;
            results2 = compose("%.0f USD equals %.2f JPY\n", num(:), usd2jpy(:));
            fprintf('%s', strjoin(results2))
    
        case "EUR to USD"
            eur2usd = num * (1/Xrate1);
            results3 = compose("%.0f EUR equals %.2f USD\n", num(:), eur2usd(:));
            fprintf('%s', strjoin(results3))
            
        case "EUR to JPY"
            eur2jpy = num * ((1/Xrate1) * Xrate2);
            results4 = compose("%.0f EUR equals %.2f JPY\n", num(:), eur2jpy(:));
            fprintf('%s', strjoin(results4))
    
        case "JPY to USD"
            jpy2usd = num / Xrate2;
            results1 = compose("%.0f JPY equals %.2f USD\n", num(:), jpy2usd(:));
            fprintf('%s', strjoin(results1))
    
        case "JPY to EUR"
            jpy2eur = num * ((1/Xrate2) * Xrate1);
            results1 = compose("%.0f JPY equals %.2f EUR\n", num(:), jpy2eur(:));
            fprintf('%s', strjoin(results1))
    
    end

continuePrompt = "Would you like to convert again? (y/n): "; % asks user if they want to continue
y_or_n = input(continuePrompt, 's');

end

if (y_or_n == "n")

    fprintf("Goodbye") % outputs if user declines to repeat program

end
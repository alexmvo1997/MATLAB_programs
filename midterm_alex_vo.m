%{
this program is a game in which the user can place a bet and guess the results of a dice rolling three times and the sum of those 3 numbers.
the user can place a initial bet of no more than ten dollars.
the user will be asked if they want to continue as long as they want as long as their balance does not equal zero.
%}

balance = 0; % initializes balance value
y_or_n = "y";

userBalPrompt = "Enter balance to play: \n"; % asks user the amount of points they want to wager
userBal = input(userBalPrompt);

while (y_or_n == "y") % while loop continues as long as user does not have a zero balance or user does not want to play again

    fprintf('Your balance is %d dollars\n', userBal) % prints user's balance

    betPrompt = "Place a bet of <10, exactly 10, or >10: \n"; % takes user wager input
    bet = input(betPrompt);

        if (bet > userBal) % checks if their bet exceeds the limit
            betPrompt = "Bet cannot exceed balance. Place a bet of <10, exactly 10, or >10: \n";
            bet = input(betPrompt,"s");
        else
        end

    guessPrompt = "Please guess the results of a dice rolling 3 times (use [x x x] format): \n"; % user inputs their guess in the specified format
    guess = [input(guessPrompt)];
    guessSumPrompt = "Please enter the sum of your guess: \n"; % user inputs the sum of their three numbers
    guessSum = input(guessSumPrompt);
    dice = randi(6,1,3) % this random number generator acts as a dice
    diceSum = sum(dice) % summates the three randomly generated numbers

        if (isequal(guess,dice) && isequal(guessSum,diceSum)) % checks if the users guess and sum guess equals the dice roll
            if (bet < 10 | bet > 10) % ensures user's bet meets criteria
                winnings1 = bet; % assigns the wage placed to winnings variabke
                userBal = userBal + winnings1; % adds user's winnings to their balance
                fprintf("You won %d dollars. Your new balance is %d dollars\n",winnings1,userBal)
            end
            if (bet == 10) % triggers if wager equals 10
                winnings2 = 5 * bet; % due to user's maximum wager, the winnings will be greater
                userBal = userBal + winnings2;
                fprintf("You won %d dollars. Your new balance is %d dollars\n",winnings2,userBal)
            end
        else % triggers if user's guess is wrong
            userBal = userBal - bet; 
            fprintf("You lost, sorry. Your new balance is %d dollars\n",userBal)
        end


    if ((userBal == 0) | (userBal < 0)) % if users balance equals zero, game ends and game over is printed.
        fprintf("Game Over\n")
    else % triggers if user's balance does not equal zero and asks if they would like to continue
        contGamePrompt = "Would you like to play again? (y/n): \n";
        y_or_n = input(contGamePrompt, 's');
        userBal = userBal;
    end
end

if (y_or_n == "n") % triggers if user does not want to continue
    fprintf("Goodbye\n")
else
end

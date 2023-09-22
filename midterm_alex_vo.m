balance = 0;
y_or_n = "y";

userBalPrompt = "Enter balance to play: \n"; %---Step 1---
userBal = input(userBalPrompt);

while (y_or_n == "y")

    fprintf('Your balance is %d dollars\n', userBal) %---Step 2---

    betPrompt = "Place a bet of <10, exactly 10, or >10: \n"; %---Step 3&4---
    bet = input(betPrompt);

        if (bet > userBal)
            betPrompt = "Bet cannot exceed balance. Place a bet of <10, exactly 10, or >10: \n";
            bet = input(betPrompt,"s");
        else
        end

    guessPrompt = "Please guess the results of a dice rolling 3 times (use [x x x] format): \n";
    guess = [input(guessPrompt)];
    guessSumPrompt = "Please enter the sum of your guess: \n";
    guessSum = input(guessSumPrompt);
    dice = randi(6,1,3)
    diceSum = sum(dice)

        if (isequal(guess,dice) && isequal(guessSum,diceSum))
            if (bet < 10 | bet > 10) %---Step 6---
                winnings1 = bet;
                userBal = userBal + winnings1;
                fprintf("You won %d dollars. Your new balance is %d dollars\n",winnings1,userBal)
            end
            if (bet == 10)
                winnings2 = 5 * bet;
                userBal = userBal + winnings2;
                fprintf("You won %d dollars. Your new balance is %d dollars\n",winnings2,userBal)
            end
        else
            userBal = userBal - bet; %---Step 5---
            fprintf("You lost, sorry. Your new balance is %d dollars\n",userBal)
        end


    if ((userBal == 0) | (userBal < 0)) %---Step 7---
        fprintf("Game Over\n")
    else
        contGamePrompt = "Would you like to play again? (y/n): \n";
        y_or_n = input(contGamePrompt, 's');
        userBal = userBal;
    end
end

if (y_or_n == "n")
    fprintf("Goodbye\n")
else
end
//
//  main.m
//  Threelow
//
//  Created by Alex on 2015-10-21.
//  Copyright © 2015 Alex. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "InputCollector.h"
#import "GameController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        Dice *dice1 = [[Dice alloc] initWithName:@"Dice #1"];
        Dice *dice2 = [[Dice alloc] initWithName:@"Dice #2"];
        Dice *dice3 = [[Dice alloc] initWithName:@"Dice #3"];
        Dice *dice4 = [[Dice alloc] initWithName:@"Dice #4"];
        Dice *dice5 = [[Dice alloc] initWithName:@"Dice #5"];
        
        GameController *game = [[GameController alloc] init];
        
        game.arrayOfDice = [@[dice1, dice2, dice3, dice4, dice5] mutableCopy];
        game.heldDice = [@[] mutableCopy];
        
        InputCollector *inputCollector = [[InputCollector alloc] init];
        
        while (true) {
            
            if (game.numberOfRolls >= 5) {
                
                NSLog(@"\nYou have run out of rolls. You have a score of %lu.", (unsigned long)[game calculateScore]);
                
                if (!game.bestScore) {
                    
                    NSLog(@"The new best score is %lu. Let's see if you can beat it!", (unsigned long)[game calculateScore]);
                    game.bestScore = [game calculateScore];
                    
                } else if (game.bestScore <= [game calculateScore]) {
                    
                    NSLog(@"The best score is still %lu. Let's see if you can beat it!", (unsigned long)game.bestScore);
                    
                } else if (game.bestScore > [game calculateScore]) {
                    
                    NSLog(@"Congrats! You've got the new best score!");
                    game.bestScore = [game calculateScore];
                    
                }
                
                
                NSString *input = [inputCollector inputForPrompt:@"\nWhat do you want to do?\n play - Play Again\n quit - Quit/"];
                
                if ([input isEqualToString:@"play"]) {
                    
                    [game resetDice];
                
                } else if ([input isEqualToString:@"quit"]) {
                    
                    NSLog(@"Thanks for playing.");
                    break;
                    
                } else {
                    
                    NSLog(@"That is not a valid input");
                    
                }
                
            }
            
            NSString *input = [inputCollector inputForPrompt:@"\n What do you want to do?\n roll - Roll the Dice\n quit - Quit Program\n reset - Reset Game"];
            
            if ([input isEqualToString:@"roll"]) {
                
                [game rollDice];
                
                while (true) {
                    
                    NSString *dieToHold = [inputCollector inputForPrompt:@"Please enter the number for any die you would like to hold or unhold. When you are finished, type 'next'."];
                    
                    if ([dieToHold isEqualToString:@"1"]) {
                        
                        [game holdDie:dice1];
                        
                    } else if ([dieToHold isEqualToString:@"2"]) {
                        
                        [game holdDie:dice2];
    
                    } else if ([dieToHold isEqualToString:@"3"]) {
                        
                        [game holdDie:dice3];
    
                    } else if ([dieToHold isEqualToString:@"4"]) {
                        
                        [game holdDie:dice4];
    
                    } else if ([dieToHold isEqualToString:@"5"]) {
                        
                        [game holdDie:dice5];
    
                    } else if ([dieToHold isEqualToString:@"next"]) {
                        
                        if (game.numberOfRolls > [game.heldDice count]) {
                            
                            NSLog(@"You need to hold at least %lu dice.", (unsigned long)game.numberOfRolls);
                            
                        } else {
                            
                            break;
                            
                        }
                        
                    } else {
                        
                        NSLog(@"That is not a valid input.");
                        
                    }
                    
                }
                
            } else if ([input isEqualToString:@"reset"]) {
                
                [game resetDice];
                
            } else if ([input isEqualToString:@"quit"]) {
                
                NSLog(@"Goodbye");
                break;
                
            } else {
                
                NSLog(@"That is not a valid input.");
                
            }
        }
        
        
        
        
    }
    return 0;
}

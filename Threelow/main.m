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
            
            NSString *input = [inputCollector inputForPrompt:@"\n What do you want to do?\n roll - Roll the Dice\n quit - Quit Program"];
            
            if ([input isEqualToString:@"roll"]) {
                
                for (Dice *die in game.arrayOfDice) {
                    [die randomizeValue];
                    NSLog(@"%@", die);
                }
                
                if ([game.heldDice count] >= 1) {
                    
                    NSLog(@"(remember you are holding: %@", game.heldDice);
                    
                }
                
                while (true) {
                    
                    NSString *dieToHold = [inputCollector inputForPrompt:@"Please enter the number for any die you would like to hold. When you are finished, type 'next'."];
                    
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
                        
                        NSLog(@"You are now holding %@", game.heldDice);
                        break;
                        
                    } else {
                        
                        NSLog(@"That is not a valid input.");
                        
                    }
                    
                }
                
                
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

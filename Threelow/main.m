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
        
        game.arrayOfDice = @[dice1, dice2, dice3, dice4, dice5];
        
        InputCollector *inputCollector = [[InputCollector alloc] init];
        
        while (true) {
            
            NSString *input = [inputCollector inputForPrompt:@"\n What do you want to do?\n roll - Roll the Dice\n quit - Quit Program"];
            
            if ([input isEqualToString:@"roll"]) {
                
                for (Dice *dye in game.arrayOfDice) {
                    [dye randomizeValue];
                    NSLog(@"%@ is showing %lu", dye, dye.currentValue);
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

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

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        Dice *dice1 = [[Dice alloc] init];
        Dice *dice2 = [[Dice alloc] init];
        Dice *dice3 = [[Dice alloc] init];
        Dice *dice4 = [[Dice alloc] init];
        Dice *dice5 = [[Dice alloc] init];
        
        InputCollector *inputCollector = [[InputCollector alloc] init];
        
        while (true) {
            
            NSString *input = [inputCollector inputForPrompt:@"\n What do you want to do?\n roll - Roll the Dice\n quit - Quit Program"];
            
            if ([input isEqualToString:@"roll"]) {
                
                [dice1 randomizeValue];
                NSLog(@"dice1 = %lu", (unsigned long)dice1.currentValue);
                
                [dice2 randomizeValue];
                NSLog(@"dice2 = %lu", (unsigned long)dice2.currentValue);
                
                [dice3 randomizeValue];
                NSLog(@"dice3 = %lu", (unsigned long)dice3.currentValue);
                
                [dice4 randomizeValue];
                NSLog(@"dice4 = %lu", (unsigned long)dice4.currentValue);
                
                [dice5 randomizeValue];
                NSLog(@"dice5 = %lu", (unsigned long)dice5.currentValue);
                
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

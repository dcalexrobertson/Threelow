//
//  GameController.m
//  Threelow
//
//  Created by Alex on 2015-10-21.
//  Copyright © 2015 Alex. All rights reserved.
//

#import "GameController.h"
#import "Dice.h"

@implementation GameController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _numberOfRolls = 0;
    }
    return self;
}

-(void)rollDice
{
    for (Dice *die in self.arrayOfDice) {
        [die randomizeValue];
        NSLog(@"%@", die);
    }
    
    if ([self.heldDice count] >= 1) {
        
        NSLog(@"\nYou are holding: %@\n Score: %lu", self.heldDice, (unsigned long)[self calculateScore]);
        
    } else {
        
        NSLog(@"\n Score: %lu", (unsigned long)[self calculateScore]);
        
    }
    
    self.numberOfRolls++;
    
    NSUInteger rollsLeft = 5 - self.numberOfRolls;
    
    NSLog(@"You have %lu roll(s) left.", (unsigned long)rollsLeft);
    
}

-(void)holdDie:(Dice *)dieToHold
{
    
    if ([self.heldDice containsObject:dieToHold]) {
        
        [self.heldDice removeObject:dieToHold];
        [self.arrayOfDice addObject:dieToHold];
        NSLog(@"\nYou are no longer holding %@", dieToHold);
        
    } else {
        
        [self.arrayOfDice removeObject:dieToHold];
        [self.heldDice addObject:dieToHold];
        NSLog(@"\nYou are now holding %@. Score: %lu", self.heldDice, (unsigned long)[self calculateScore]);
    }
}

-(void)resetDice
{
    
    if ([self.heldDice count] >= 1) {
        
        for (Dice *die in self.heldDice) {
            
            [self.arrayOfDice addObject:die];
            
        }
        
        [self.heldDice removeAllObjects];
        
    }
    
    self.numberOfRolls = 0;
    
    NSLog(@"You are no longer holding any dice. You can start again.");
    
}

-(NSUInteger)calculateScore
{
    
    NSUInteger score = 0;
    
    for (Dice *die in self.heldDice) {
        
        score += die.currentValue;
        
    }
    
    return score;
}



@end

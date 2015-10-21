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

-(void)holdDie:(Dice *)dieToHold
{
    
    if ([self.heldDice containsObject:dieToHold]) {
        
        [self.heldDice removeObject:dieToHold];
        [self.arrayOfDice addObject:dieToHold];
        NSLog(@"You are no longer holding %@", dieToHold);
        
    } else {
        
        [self.arrayOfDice removeObject:dieToHold];
        [self.heldDice addObject:dieToHold];
        NSLog(@"You are now holding %@", self.heldDice);
        
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
    
    NSLog(@"You are no longer holding any dice. You can start again.");
    
}


@end

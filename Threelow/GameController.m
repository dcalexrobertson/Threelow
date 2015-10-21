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
    
    [self.arrayOfDice removeObject:dieToHold];
    [self.heldDice addObject:dieToHold];
    
}

@end

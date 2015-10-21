//
//  Dice.m
//  Threelow
//
//  Created by Alex on 2015-10-21.
//  Copyright © 2015 Alex. All rights reserved.
//

#import "Dice.h"

@implementation Dice

-(void)randomizeValue
{
    
    self.currentValue = 1 + arc4random_uniform(6);
    
}


@end

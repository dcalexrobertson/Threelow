//
//  Dice.m
//  Threelow
//
//  Created by Alex on 2015-10-21.
//  Copyright © 2015 Alex. All rights reserved.
//

#import "Dice.h"

@implementation Dice

- (instancetype)initWithName:(NSString *)name
{
    self = [super init];
    if (self) {
        _name = name;
    }
    return self;
}



-(void)randomizeValue
{
    
    self.showing = 1 + arc4random_uniform(6);
    
    if (self.showing == 3) {
        
        self.currentValue = 0;
        
    } else {
        
        self.currentValue = self.showing;
        
    }
    
}

-(NSString *)description
{
    return [NSString stringWithFormat:@"%@ (showing %lu)", self.name, (unsigned long)self.showing];
}




@end

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
    
    self.currentValue = 1 + arc4random_uniform(6);
    
}

-(NSString *)description
{
    return [NSString stringWithFormat:@"%@", self.name];
}




@end

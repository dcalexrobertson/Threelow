//
//  Dice.h
//  Threelow
//
//  Created by Alex on 2015-10-21.
//  Copyright © 2015 Alex. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dice : NSObject

@property (nonatomic) NSUInteger currentValue;

-(void)randomizeValue;
-(void)roll;

@end

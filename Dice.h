//
//  Dice.h
//  Threelow
//
//  Created by Alex on 2015-10-21.
//  Copyright © 2015 Alex. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dice : NSObject

@property (nonatomic) NSString * name;
@property (nonatomic) NSUInteger currentValue;
@property (nonatomic) NSUInteger showing;

-(instancetype)initWithName:(NSString *)name;

-(void)randomizeValue;

@end

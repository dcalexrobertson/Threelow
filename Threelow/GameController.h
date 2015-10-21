//
//  GameController.h
//  Threelow
//
//  Created by Alex on 2015-10-21.
//  Copyright © 2015 Alex. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Dice;

@interface GameController : NSObject

@property (nonatomic) NSMutableArray *arrayOfDice;
@property (nonatomic) NSMutableArray *heldDice;
@property (nonatomic) NSUInteger score;

-(void)holdDie:(Dice *)dieToHold;

-(void)resetDice;

-(NSUInteger)calculateScore;

@end

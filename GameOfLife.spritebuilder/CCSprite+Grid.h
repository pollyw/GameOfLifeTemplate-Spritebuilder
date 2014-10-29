//
//  CCSprite+Grid.h
//  GameOfLife
//
//  Created by Polly Wu on 10/27/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "CCSprite.h"

@interface CCSprite (Grid)

@property (nonatomic, assign) int totalAlive;
@property (nonatomic, assign) int generation;

@end

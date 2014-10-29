//
//  CCSprite+Creature.m
//  GameOfLife
//
//  Created by Polly Wu on 10/27/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "CCSprite+Creature.h"

@implementation CCSprite (Creature)

-(instancetype)initCreature {
    //since we made Creature inherit from ccsprite, 'super' below refers to ccsprite
    self = [super initWithImageNamed:@"GameOFLifeAssets/Assets/bubble.png"];
    
    if (self) {
        self.isAlive = NO;
    }
    
    return self;
}

- (void)setIsAlive:(BOOL)newState {
    //when you create an @property as we did in the .h,
    //an instance with a leading underscore is automatically created for you
    _isAlive = newState;
    
    // 'visible' is a property of any class that inherits from ccnode.
    //ccsprite is a subclass of ccnode, and creature is a subclass of of ccsprite
    //so creatures have a visible property
    self.visible = _isAlive;
}

@end

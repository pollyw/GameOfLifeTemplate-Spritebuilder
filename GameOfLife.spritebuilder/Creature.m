//
//  Creature.m
//  GameOfLife
//
//  Created by Polly Wu on 10/28/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "Creature.h"

@implementation Creature

-(instancetype) initCreature {
    //since we made creature inherit from CCsprite, "super" below refers to ccsprite
    self = [super initWithImageNamed:@"GameofLifeAssets/Assets/bubble.png"];
    
    if (self) {
        self.isAlive = NO;
    }
    
    return self;
}

//when creature is alive, it will be visible
- (void)setIsAlive:(BOOL)newState {
    //when you create an @property as we did in the .h,
    //an instance variable with a leading underscore is automatically created for you
    _isAlive = newState;
    
    //'visible' is a property of any class that inherits from ccnode.
    //ccsprite is a subclass of ccnode, and creature is a subclass of ccsprite, so creature is a visible property
    self.visible = _isAlive;
}

@end

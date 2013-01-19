//
//  CCProgressTimer+Helper.m
//  CocosBuilder
//
//  Created by GuoDong on 12-12-17.
//
//

#import "CCProgressTimer+Helper.h"

@implementation CCProgressTimer (Helper)

-(void) customUpdate
{
    [self setPercentage:self.percentage-0.1];
    [self setPercentage:self.percentage+0.1];
}

-(void) setProgressSprite:(CCSpriteFrame*) frame
{
    CCSprite* temp = [CCSprite spriteWithSpriteFrame:frame];
    [self setSprite:temp];
    [self customUpdate];
}

-(CCSpriteFrame*) getProgressSprite
{
    return self.sprite.displayFrame;
}

-(void) setCustomMidpoint:(CGPoint)midPoint
{
    [self setMidpoint:midPoint];
    [self customUpdate];
}

-(CGPoint) getCustomMidpoint
{
    return midpoint_;
}

-(void) setCustomType:(CCProgressTimerType) type
{
    self.type = type;
    [self customUpdate];
}

-(CCProgressTimerType) getCustomType
{
    return self.type;
}
@end

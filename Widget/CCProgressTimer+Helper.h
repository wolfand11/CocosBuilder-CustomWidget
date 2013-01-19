//
//  CCProgressTimer+Helper.h
//  CocosBuilder
//
//  Created by GuoDong on 12-12-17.
//
//

#import "CCProgressTimer.h"
#import "cocos2d.h"

@interface CCProgressTimer (Helper)

-(void) setProgressSprite:(CCSpriteFrame*) frame;
-(CCSpriteFrame*) getProgressSprite;

-(void) setCustomMidpoint:(CGPoint)midPoint;
-(CGPoint) getCustomMidpoint;

-(void) setCustomType:(CCProgressTimerType)type;
-(CCProgressTimerType) getCustomType;


@end

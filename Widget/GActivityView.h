//
//  GActivityView.h
//  CocosBuilder
//
//  Created by GuoDong on 12-12-10.
//
//

#import "CCLayer.h"
#import "cocos2d.h"

@interface GActivityView : CCLayer
{
    CCLayerColor*    backgroundLayer;
    CCSprite*   activity;
    CCSprite*   background;
    float       rotateInterval;
    CGPoint     activityPos;
    ccColor4B   backgroundColor;
    
    bool        needUpdateRotateSpeed;
}
@property(readwrite,nonatomic,assign)float      rotateInterval;
@property(readwrite,nonatomic,assign)CGPoint    activityPos;
@property(readwrite,nonatomic,assign)ccColor4B  backgroundColor;
-(void) setBackgroundColor:(ccColor4B)color;
-(void) setRotateInterval:(float)interval;
-(void) setActivityPos:(CGPoint)pos;
-(void) setActivitySpriteFrame:(CCSpriteFrame*)frame;
-(void) setBackgroundSpriteFrame:(CCSpriteFrame*)frame;
@end

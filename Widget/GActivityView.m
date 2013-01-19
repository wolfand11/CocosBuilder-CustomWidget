//
//  GActivityView.m
//  CocosBuilder
//
//  Created by GuoDong on 12-12-10.
//
//

#import "GActivityView.h"
#import "GCustomWidgetDefine.h"

@implementation GActivityView
@synthesize activityPos;
@synthesize rotateInterval;
@synthesize backgroundColor;

-(id) init
{
    if([super init])
    {
        backgroundLayer = [CCLayerColor layerWithColor:ccc4(255, 255, 255, 100)];
        background  = [CCSprite spriteWithFile:kDefaultPngFilePath];
        activity    = [CCSprite spriteWithFile:kDefaultPngFilePath];
        needUpdateRotateSpeed = false;
        
        [self addChild:background];
        [self addChild:activity];
    }
    return self;
}

-(void) update:(float)delta
{
    if (needUpdateRotateSpeed)
    {
        [activity stopAllActions];
        CCActionInterval* temp = [CCRotateTo actionWithDuration:rotateInterval angle:360.0f];
        CCAction* repeat = [CCRepeatForever actionWithAction:temp];
        [activity runAction:repeat];
    }
}

-(void) setBackgroundColor:(ccColor4B)color
{
    [backgroundLayer setColor:ccc3(color.r, color.g, color.b)];
    [backgroundLayer setOpacity:color.a];
}

-(void) setActivitySpriteFrame:(CCSpriteFrame *)frame
{
    if (frame)
    {
        [activity setDisplayFrame:frame];
    }
}

-(void) setBackgroundSpriteFrame:(CCSpriteFrame *)frame
{
    if (frame)
    {
        [background setDisplayFrame:frame];
    }
}

-(void) setRotateInterval:(float)interval
{
    needUpdateRotateSpeed = true;
    rotateInterval = interval;
}

-(void) setActivityPos:(CGPoint)pos
{
    activityPos = pos;
    [activity setPosition:pos];
    [background setPosition:pos];
}

@end

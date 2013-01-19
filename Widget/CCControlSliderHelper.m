//
//  CCControlSliderHelper.m
//  CocosBuilder
//
//  Created by guodong on 12-11-20.
//
//

#import "CCControlSliderHelper.h"
#import "GUtility.h"

@implementation CCControlSlider(Helper)
-(id) init
{
    return [self initWithBackgroundSprite:[CCSprite spriteWithFile:@"none.png"]
                                      progressSprite:[CCSprite spriteWithFile:@"none.png"]
                                         thumbSprite:[CCSprite spriteWithFile:@"none.png"]
            ];
}

-(void) setBackgroundSpriteFrame:(CCSpriteFrame*)frame
{
    if (frame)
    {
        [backgroundSprite_ setDisplayFrame:frame];
        [self updateContentSize];
    }
}

-(void) setProgressSpriteFrame:(CCSpriteFrame*)frame
{
    if (frame)
    {
        [progressSprite_ setDisplayFrame:frame];
        [self updateContentSize];
    }
}
-(void) setThumbSpriteFrame:(CCSpriteFrame*)frame
{
    if (frame)
    {
        [thumbSprite_ setDisplayFrame:frame];
        [self updateContentSize];
    }
}
-(void) updateContentSize
{
    CGSize maxSize = CGSizeZero;
    CGSize size1 = backgroundSprite_.contentSize;
    CGSize size2 = progressSprite_.contentSize;
    CGSize size3 = thumbSprite_.contentSize;
    maxSize = [GUtility MaxCGSize:&size1,&size2,&size3,nil];
    self.contentSize = maxSize;
    
    backgroundSprite_.position  = ccp(self.contentSize.width / 2, self.contentSize.height / 2);
    progressSprite_.position    = ccp(0, self.contentSize.height / 2);
    thumbSprite_.position       = ccp(self.contentSize.width / 2, self.contentSize.height / 2);
}
@end

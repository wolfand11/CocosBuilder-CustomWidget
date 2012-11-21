//
//  CCControlSliderHelper.h
//  CocosBuilder
//
//  Created by guodong on 12-11-20.
//
//

#import "CCControlSlider.h"

@interface CCControlSlider(Helper)
-(id)   init;
-(void) setBackgroundSpriteFrame:(CCSpriteFrame*)frame;
-(void) setProgressSpriteFrame:(CCSpriteFrame*)frame;
-(void) setThumbSpriteFrame:(CCSpriteFrame*)frame;
-(void) updateContentSize;
@end

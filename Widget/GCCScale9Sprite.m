//
//  GCCScale9Sprite.m
//  CocosBuilder
//
//  Created by guodong on 13-1-9.
//
//

#import "GCCScale9Sprite.h"

@implementation GCCScale9Sprite

-(void)setContentSize:(CGSize)size
{
    [super setContentSize:size];
    preferedSize_ = size;
}

-(void)setSpriteFrame:(CCSpriteFrame *)frame
{
    CGSize tempSize = self.contentSize;
    [super setSpriteFrame:frame];
    [self setContentSize:tempSize];
}

@end

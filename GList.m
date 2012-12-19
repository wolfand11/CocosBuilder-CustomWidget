//
//  GList.m
//  CocosBuilder
//
//  Created by GuoDong on 12-12-19.
//
//

#import "GList.h"

@implementation GList

- (void) setPosition:(CGPoint)position
{
    [super setPosition:position];
    [self setContentSize:CGSizeZero];
    self.touchRectOrigin = position;
}

@end

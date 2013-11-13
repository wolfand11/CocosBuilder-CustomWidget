//
//  GList.m
//  CocosBuilder
//
//  Created by GuoDong on 12-12-19.
//
//

#import "GAbstractSlideContainer.h"
#import "PositionPropertySetter.h"
#import "CocosBuilderAppDelegate.h"
#import "CocosScene.h"
#import "GUtility.h"

@implementation GAbstractSlideContainer

-(id) init
{
    if ([super init])
    {
        [self setIgnoreAnchorPointForPosition:NO];
        return self;
    }
    return nil;
}

@end

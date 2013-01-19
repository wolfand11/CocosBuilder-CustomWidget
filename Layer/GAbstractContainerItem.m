//
//  GAbstractContainerItem.m
//  CocosBuilder
//
//  Created by GuoDong on 12-12-24.
//
//

#import "GAbstractContainerItem.h"
#import "CocosBuilderAppDelegate.h"
#import "PositionPropertySetter.h"
#import "GUtility.h"

@implementation GAbstractContainerItem
-(id) init
{
    if ((self=[super init]))
    {
        tempMaxContentSize = CGSizeZero;
        [self scheduleUpdate];
    }
    return self;
}

-(void) update:(float)delta
{
    if (!CGSizeEqualToSize(tempMaxContentSize, [GUtility GetMaxContentSizeOfNode:self]))
    {
        [PositionPropertySetter setSize:NSSizeFromCGSize(touchRectSize)
                                forNode:[[CocosBuilderAppDelegate appDelegate] selectedNode]
                                   prop:@"itemSize"];
    }
}
@end

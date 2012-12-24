//
//  GAbstractTouchableItem.m
//  CocosBuilder
//
//  Created by GuoDong on 12-12-24.
//
//

#import "GAbstractTouchableItem.h"
#import "CocosBuilderAppDelegate.h"
#import "PositionPropertySetter.h"

@implementation GAbstractTouchableItem
@synthesize itemSize;

-(void) setItemSize:(CGSize)size
{
    // do nothing itemSize is equal to touchRectSize
}

-(void) setTouchRectSize:(CGSize)size
{
    [super setTouchRectSize:size];
    [self updateItemSize];
}

-(void) adjustItemSize
{
    [PositionPropertySetter setSize:NSSizeFromCGSize(touchRectSize) forNode:[[CocosBuilderAppDelegate appDelegate] selectedNode] prop:@"itemSize"];
}

-(void) updateItemSize
{
    [self adjustItemSize];
    [[CocosBuilderAppDelegate appDelegate] refreshProperty:@"position"];
    [[CocosBuilderAppDelegate appDelegate] refreshProperty:@"touchRectOrigin"];
}
@end

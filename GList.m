//
//  GList.m
//  CocosBuilder
//
//  Created by GuoDong on 12-12-19.
//
//

#import "GList.h"
#import "PositionPropertySetter.h"
#import "CocosBuilderAppDelegate.h"
#import "CocosScene.h"
#import "GUtility.h"

@implementation GList

- (void) setPosition:(CGPoint)position
{
    m_needAdjustTouchRectOrigin = YES;
    
    [super setPosition:position];
    [self setContentSize:CGSizeZero];
    [self updateTouchRectAndPosition];
}

-(void) setTouchRectOrigin:(CGPoint)pos
{
    // do nothing
    // touchRectOrigin value is equal to postion
}

-(void) setTouchRectSize:(CGSize)size
{
    m_needAdjustPos = YES;
    
    [super setTouchRectSize:size];
    [self updateTouchRectAndPosition];
}

-(void) adjustPosOrTouchRectOrigin
{
    if (m_needAdjustPos)
    {
        position_ = [[CocosScene cocosScene] convertToViewSpace:touchRectOrigin];
        position_ = [self.parent convertToNodeSpace:position_];
        if (direction == kSlideDirection_Vertical)
        {
            position_.y += touchRectSize.height;
        }
        m_needAdjustPos = NO;
    }
    if (m_needAdjustTouchRectOrigin)
    {
        touchRectOrigin = [self.parent convertToWorldSpace:self.position];
        touchRectOrigin = [[CocosScene cocosScene] convertToDocSpace:touchRectOrigin];
        if (direction == kSlideDirection_Vertical)
        {
            touchRectOrigin.y -= touchRectSize.height;
        }
        [PositionPropertySetter setPosition:NSPointFromCGPoint(touchRectOrigin) forNode:[[CocosBuilderAppDelegate appDelegate] selectedNode] prop:@"touchRectOrigin"];
        m_needAdjustTouchRectOrigin = NO;
    }
}

-(void) updateTouchRectAndPosition
{
    [self adjustPosOrTouchRectOrigin];
    [[CocosBuilderAppDelegate appDelegate] refreshProperty:@"position"];
    [[CocosBuilderAppDelegate appDelegate] refreshProperty:@"touchRectOrigin"];
}

-(void) setDirection:(ESlideDirection)argDirection
{
    [super setDirection:argDirection];
    m_needAdjustPos = YES;
    [self updateTouchRectAndPosition];
}

@end

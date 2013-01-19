//
//  GAbstractTouchLayer.m
//  CocosBuilder
//
//  Created by guodong on 12-11-28.
//
//

#import "GAbstractTouchLayer.h"
#import "CCDrawingPrimitives.h"
@implementation GAbstractTouchLayer
@synthesize touchRectOrigin;
@synthesize touchRectSize;

- (void) draw
{
	[super draw];
    
    [self drawTouchRect];
}

//TouchRect 是相对于 世界坐标系统的值
-(void) drawTouchRect
{
    //ccDrawRect( CGPoint origin, CGPoint destination )
    glLineWidth( 1.5f );
    ccDrawColor4B(0,200,0,255);
    
    CGPoint origin = touchRectOrigin;
    origin.x -= self.position.x;
    origin.y -= self.position.y;
    
    CGPoint destination = origin;
    destination.x += touchRectSize.width;
    destination.y += touchRectSize.height;
    
    //destination = [self convertToNodeSpace:destination];
    ccDrawRect(origin, destination);
}
@end

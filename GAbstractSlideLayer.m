//
//  GAbstractSlideLayer.m
//  CocosBuilder
//
//  Created by guodong on 12-11-28.
//
//

#import "GAbstractSlideLayer.h"
#import "CCDrawingPrimitives.h"

@implementation GAbstractSlideLayer
@synthesize direction;
@synthesize friction;
@synthesize mass;
@synthesize slideBoundOrigin;
@synthesize slideBoundSize;

- (void) draw
{
	[super draw];
    
    [self drawSlideBound];
}

-(void) setSlideBoundOrigin:(CGPoint)pos
{
    slideBoundOrigin = pos;
}

-(void) setSlideBoundSize:(CGSize)size
{
    slideBoundSize = size;
}

//slideBound 是相对于 self.parent 坐标系统的值
-(void) drawSlideBound
{
    //ccDrawRect( CGPoint origin, CGPoint destination )
    glLineWidth( 2.5f );
    ccDrawColor4B(255,0,0,255);
    
    CGPoint origin = [self convertToNodeSpace:slideBoundOrigin];
    CGPoint destination = origin;
    destination.x += slideBoundSize.width;
    destination.y += slideBoundSize.height;
    
    ccDrawRect(origin, destination);
}
@end

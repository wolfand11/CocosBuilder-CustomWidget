//
//  GAbstractTouchLayer.h
//  CocosBuilder
//
//  Created by guodong on 12-11-28.
//
//

#import "CCLayer.h"
#import "GAbstractLayer.h"
@interface GAbstractTouchLayer :GAbstractLayer
{
    CGPoint touchRectOrigin;
    CGSize  touchRectSize;
}
@property(readwrite,nonatomic,assign)CGPoint touchRectOrigin;
@property(readwrite,nonatomic,assign)CGSize  touchRectSize;

-(void) drawTouchRect;
@end

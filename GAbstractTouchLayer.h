//
//  GAbstractTouchLayer.h
//  CocosBuilder
//
//  Created by guodong on 12-11-28.
//
//

#import "CCLayer.h"

@interface GAbstractTouchLayer : CCLayer
{
    CGPoint touchRectOrigin;
    CGSize  touchRectSize;
}
@property(readwrite,nonatomic,assign)CGPoint touchRectOrigin;
@property(readwrite,nonatomic,assign)CGSize  touchRectSize;
@end

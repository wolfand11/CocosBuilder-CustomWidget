//
//  GAbstractSlideLayer.h
//  CocosBuilder
//
//  Created by guodong on 12-11-28.
//
//

#import "GAbstractTouchLayer.h"

typedef enum
{
    kSlideDirection_Horizental,
    kSlideDirection_Vertical,
    kSlideDirection_Any
}ESlideDirection;

@interface GAbstractSlideLayer : GAbstractTouchLayer
{
    ESlideDirection direction;
    float           speedDecreaseFactor;
    CGSize          slideBoundSize;
    CGPoint         slideBoundOrigin;
}
@property(readwrite,nonatomic,assign)ESlideDirection direction;
@property(readwrite,nonatomic,assign)float speedDecreaseFactor;
@property(readwrite,nonatomic,assign)CGRect slideBound;
@property(readwrite,nonatomic,assign)CGPoint slideBoundOrigin;
@property(readwrite,nonatomic,assign)CGSize slideBoundSize;
-(void) drawSlideBound;
@end

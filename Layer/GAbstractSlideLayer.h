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

typedef enum
{
    kESlideLayerMoveType_Auto = 0,
    kESlideLayerMoveType_AdjustToSpecialPoint,
}ESlideLayerMoveType;

typedef enum  //slide layer out bound move type
{
    kESLOutBoundMoveType_DontMove = 0,
    kESLOutBoundMoveType_EaseOutMove,
}ESLOutBoundMoveType;

@interface GAbstractSlideLayer : GAbstractTouchLayer
{
    ESlideDirection     direction;
    ESlideLayerMoveType slideLayerMoveType;
    ESLOutBoundMoveType outBoundMoveType;
    CGSize          slideBoundSize;
    CGPoint         slideBoundOrigin;
}
@property(readwrite,nonatomic,assign)ESlideDirection direction;
@property(readwrite,nonatomic,assign)ESlideLayerMoveType slideLayerMoveType;
@property(readwrite,nonatomic,assign)ESLOutBoundMoveType outBoundMoveType;
@property(readwrite,nonatomic,assign)CGRect slideBound;
@property(readwrite,nonatomic,assign)CGPoint slideBoundOrigin;
@property(readwrite,nonatomic,assign)CGSize slideBoundSize;
-(void) drawSlideBound;
@end

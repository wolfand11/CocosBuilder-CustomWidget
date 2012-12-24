//
//  GAbstractTouchableItem.h
//  CocosBuilder
//
//  Created by GuoDong on 12-12-24.
//
//

#import "GAbstractTouchLayer.h"

@interface GAbstractTouchableItem : GAbstractTouchLayer
{
    CGSize itemSize;
}
@property(readwrite,nonatomic,assign)CGSize itemSize;
-(void) setItemSize:(CGSize)size;
@end

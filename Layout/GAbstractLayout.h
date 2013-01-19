//
//  GAbstractLayout.h
//  CocosBuilder
//
//  Created by GuoDong on 12-12-27.
//
//

#import "CCNode.h"

typedef enum ELayoutDirection
{
    kLayoutDirection_Horizental = 0,   //from left to right
    kLayoutDirection_Vertical,         //from top to bottom
}ELayoutDirection;

@interface GAbstractLayout : CCNode
{
    ELayoutDirection layoutDirection;
}
@property(readwrite,nonatomic,assign)ELayoutDirection layoutDirection;
@end

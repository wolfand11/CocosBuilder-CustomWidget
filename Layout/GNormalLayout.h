//
//  GNormalLayout.h
//  CocosBuilder
//
//  Created by GuoDong on 12-12-27.
//
//

#import "GAbstractLayout.h"
#import "cocos2d.h"

@interface GNormalLayout : GAbstractLayout
{
    //itemInterval is saved in contentSize
    //startPos is saved in position
    int rowCount;
    int columnCount;
}
@property(nonatomic,readwrite,assign)int rowCount;
@property(nonatomic,readwrite,assign)int columnCount;
@end

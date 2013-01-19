//
//  GLayerPropertyExtension.h
//  GLayerPropertyExtension
//
//  Created by guodong on 13-1-10.
//
//

#import "cocos2d.h"

@interface GLayerPropertyExtension : CCLayer
{
    BOOL isSwallowTouchs_;
    BOOL isSwallowsMultiTouchs_;
}
@property(readwrite,nonatomic,assign)BOOL isSwallowTouchs;
@property(readwrite,nonatomic,assign)BOOL isSwallowsMultiTouchs;
@end

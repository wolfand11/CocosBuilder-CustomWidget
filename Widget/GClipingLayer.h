//
//  GClipingLayer.h
//  CocosBuilder
//
//  Created by guodong on 13-12-3.
//
//

#import "CCNode.h"
#import "GAbstractLayer.h"

@interface GClipingLayer : GAbstractLayer
{
    BOOL isInverse;
}
@property(readwrite,nonatomic,assign)BOOL isInverse;
@end

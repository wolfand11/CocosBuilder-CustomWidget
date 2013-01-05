//
//  GCCLabelAtlas.h
//  CocosBuilder
//
//  Created by GuoDong on 13-1-5.
//
//

#import "CCLabelAtlas.h"
#import "cocos2d.h"

@interface GCCLabelAtlas : CCNode
{
    CCSpriteFrame*  fontAtlas_;
    NSUInteger      itemHeight_;
    NSUInteger      itemWidth_;
    NSUInteger      startChar_;
    NSString*       string_;
}
@property(readwrite,nonatomic,assign)NSUInteger     itemWidth;
@property(readwrite,nonatomic,assign)NSUInteger     itemHeight;
@property(readwrite,nonatomic,assign)NSUInteger     startChar;
@property(readwrite,nonatomic,assign)CCSpriteFrame* fontAtlas;
@property(readwrite,nonatomic,retain)NSString*      string;
@end

//
//  GAsyncCCBFile.h
//  CocosBuilder
//
//  Created by GuoDong on 13-3-8.
//  Copyright 2013年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"

@interface GAsyncCCBFile : CCNode
{
    CCNode*     ccbFile;
    NSString*   elementKey;
}
@property (nonatomic,retain) CCNode* ccbFile;
@property(readwrite,nonatomic,retain)NSString* elementKey;
@end

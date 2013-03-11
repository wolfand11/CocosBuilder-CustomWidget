//
//  GAsyncCCBFile.m
//  CocosBuilder
//
//  Created by GuoDong on 13-3-8.
//  Copyright 2013年 __MyCompanyName__. All rights reserved.
//

#import "GAsyncCCBFile.h"
#import "ResourceManager.h"
#import "CCBReaderInternal.h"
#import "CCBGlobals.h"
#import "CCBDocument.h"
#import "CocosBuilderAppDelegate.h"
#import "CCNode+NodeInfo.h"

@implementation GAsyncCCBFile
@synthesize ccbFile;
@synthesize elementKey;

- (id) init
{
    self = [super init];
    if (!self) return NULL;
    
    return self;
}

- (void) setCcbFile:(CCNode *)cf
{
    ccbFile = cf;
    
    [self removeAllChildrenWithCleanup:YES];
    if (cf)
    {
        [self addChild:cf];
        self.contentSize = ccbFile.contentSize;
        self.anchorPoint = ccbFile.anchorPoint;
        self.ignoreAnchorPointForPosition = ccbFile.ignoreAnchorPointForPosition;
        cf.anchorPoint = ccp(0,0);
    }
    else
    {
        self.contentSize = CGSizeZero;
        self.anchorPoint = ccp(0,0);
        self.ignoreAnchorPointForPosition = NO;
    }
}

- (id) extraPropForKey:(NSString *)key
{
    if ([key isEqualToString:@"customClass"] && ccbFile)
    {
        return [ccbFile extraPropForKey:@"customClass"];
    }
    else
    {
        return [super extraPropForKey:key];
    }
}

- (NSMutableArray*) customProperties
{
    if (!ccbFile) return [NSMutableArray array];
    
    return [ccbFile customProperties];
}

@end


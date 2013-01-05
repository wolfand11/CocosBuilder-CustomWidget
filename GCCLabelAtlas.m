//
//  GCCLabelAtlas.m
//  CocosBuilder
//
//  Created by GuoDong on 13-1-5.
//
//

#import "GCCLabelAtlas.h"
#import "GCustomWidgetDefine.h"
#define kDefaultItemSize    3
@implementation GCCLabelAtlas
@synthesize itemHeight;
@synthesize itemWidth;
@synthesize mapStartChar;
@synthesize fontAtlas;
@synthesize string;

-(void) updateAtlasValues
{
    CGSize s = CGSizeMake([string_ length] * itemWidth_, itemHeight_);
    [self setContentSize:s];
}

-(id) init
{
    if ([super init])
    {
        string_ = @"///";
        return self;
    }
    return nil;
}

-(void) dealloc
{
    if (string_)
    {
        [string_ release];
    }
    [super dealloc];
}

-(void) setItemHeight:(NSUInteger)height
{
    itemHeight_ = height;
    [self updateAtlasValues];
}

-(void) setItemWidth:(NSUInteger)width
{
    itemWidth_ = width;
    [self updateAtlasValues];
}

-(void) setString:(NSString *)str
{

    NSAssert( str, @"Invalid string" );
    
    if( string_.hash != str.hash ) {
        [string_ release];
        string_ = [str copy];
    }
    
    [self updateAtlasValues];
}
@end

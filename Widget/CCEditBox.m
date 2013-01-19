//
//  CCEditBox.m
//  CocosBuilder
//
//  Created by guodong on 12-11-21.
//
//

#import "CCEditBox.h"
#import "CCScale9Sprite.h"
#import "GCustomWidgetDefine.h"

@implementation CCEditBox
@synthesize strText;
@synthesize strPlaceHolder;
@synthesize colText;
@synthesize colPlaceHolder;
@synthesize nMaxLength;
@synthesize bIsPassword;
@synthesize inputMode;
@synthesize keyboardReturnType;
@synthesize delegate;
-(id) init
{
    if([super init])
    {
        strPlaceHolder = @"";
        background = [CCScale9Sprite spriteWithFile:kDefaultPngFilePath];
        [background setOpacity:255];
        [background setColor:ccWHITE];
        [background setAnchorPoint:CGPointMake(0, 0)];
        [self addChild:background z:1];
        
        [self setContentSize:CGSizeMake(120, 40)];
        
        label = [CCLabelTTF labelWithString:@"Sample Text" fontName:@"Arial" fontSize:30];
        [label setAnchorPoint:CGPointMake(0, 0.5)];
        [label setPosition:CGPointMake(0, self.contentSize.height/2)];
        
        [self addChild:label z:10];
    }
    return self;
}

-(void) setStrPlaceHolder:(NSString *)str
{
    if (!str || [strPlaceHolder isEqualToString:str])
    {
        return;
    }
    [strPlaceHolder release];
    strPlaceHolder = str;
    [strPlaceHolder retain];
    [label setString:str];
}

-(void) setColPlaceHolder:(ccColor3B)col
{
    //Fixed: self.colPlaceHolder is call setColPlaceHolder again!
    //self.colPlaceHolder = col;
    colPlaceHolder = col;
    [label setColor:col];
}

-(void) setBackgroundSpriteFrame:(CCSpriteFrame *)frame
{
    if (frame)
    {
        [background setSpriteFrame:frame];
        [self setContentSize:self.contentSize];
    }
}

-(void) setContentSize:(CGSize)contentSize
{
    if (background)
    {
        contentSize_ = contentSize;
        [background setPreferedSize:contentSize];
        [label setPosition:CGPointMake(0, self.contentSize.height/2)];
        [label setFontSize:self.contentSize.height*2/3];
    }
}

@end

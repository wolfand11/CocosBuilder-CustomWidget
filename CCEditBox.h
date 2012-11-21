//
//  CCEditBox.h
//  CocosBuilder
//
//  Created by guodong on 12-11-21.
//
//

#import "CCControlButton.h"

/**
 Property:
 backgroundSpriteFrame
 strText
 strPlaceHolder
 colText
 colPlaceHolder
 nMaxLength
 bIsPassword
 */

@interface CCEditBox : CCNode
{
    CCLabelTTF* label;
    CCScale9Sprite* background;
    NSString* strText;
    NSString* strPlaceHolder;
    
    ccColor3B colText;
    ccColor3B colPlaceHolder;
    
    float nMaxLength;
    bool  bIsPassword;
    
    int   inputMode;
    int   keyboardReturnType;
}
@property(readwrite,nonatomic,retain,setter = setStrPlaceHolder:)NSString*  strPlaceHolder;
@property(readwrite,nonatomic,retain)NSString*  strText;
@property(readwrite,nonatomic,assign)ccColor3B  colText;
@property(readwrite,nonatomic,assign)ccColor3B  colPlaceHolder;
@property(readwrite,nonatomic,assign)float      nMaxLength;
@property(readwrite,nonatomic,assign)bool       bIsPassword;
@property(readwrite,nonatomic,assign)int        inputMode;
@property(readwrite,nonatomic,assign)int        keyboardReturnType;
-(void) setStrPlaceHolder:(NSString *)str;
-(void) setBackgroundSpriteFrame:(CCSpriteFrame*) frame;
@end

//
//  GGraySprite.h
//  CocosBuilder
//
//  Created by guodong on 13-11-25.
//
//

#import "CCSprite.h"

@interface GGraySprite : CCSprite

+(id) spriteWithFile:(NSString*)filename;
-(id) initWithTexture:(CCTexture2D*)texture rect:(CGRect)rect rotated:(BOOL)rotated;
//-(void) draw;
@end

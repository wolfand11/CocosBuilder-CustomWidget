//
//  GGraySprite.m
//  CocosBuilder
//
//  Created by guodong on 13-11-25.
//
//

#import "cocos2d.h"
#import "GGraySprite.h"

@implementation GGraySprite

+(id) spriteWithFile:(NSString*)filename
{
    GGraySprite* temp = [[GGraySprite alloc] initWithFile:filename];
    if (temp)
    {
        [temp autorelease];
        return temp;
    }
    return nil;
}

-(id) initWithTexture:(CCTexture2D*)texture rect:(CGRect)rect rotated:(BOOL)rotated
{
    if( (self = [super initWithTexture:texture rect:rect rotated:rotated]) )
	{
        const GLchar * gShader_RGBToGray_frag =
#include "gShader_RGBToGray_frag.h"
        
		// shader program
        CCGLProgram* shaderProgram = [CCGLProgram programWithVertexShaderByteArray:ccPositionTextureColor_vert fragmentShaderByteArray:gShader_RGBToGray_frag];
        [self setShaderProgram:shaderProgram];
        CHECK_GL_ERROR_DEBUG();
        
        [shaderProgram addAttribute:kCCAttributeNamePosition index:kCCVertexAttrib_Position];
        [shaderProgram addAttribute:kCCAttributeNameColor index:kCCVertexAttrib_Color];
        [shaderProgram addAttribute:kCCAttributeNameTexCoord index:kCCVertexAttrib_TexCoords];
        CHECK_GL_ERROR_DEBUG();
        
        [shaderProgram link];
        CHECK_GL_ERROR_DEBUG();
        
        [shaderProgram updateUniforms];
        CHECK_GL_ERROR_DEBUG();
	}
	return self;
}
@end

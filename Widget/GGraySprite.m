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

//-(void) draw
//{
//    CC_PROFILER_START_CATEGORY(kCCProfilerCategorySprite, @"CCSprite - draw");
//    
//	NSAssert(!_batchNode, @"If CCSprite is being rendered by CCSpriteBatchNode, CCSprite#draw SHOULD NOT be called");
//    
//	CC_NODE_DRAW_SETUP();
//    
//	ccGLBlendFunc( _blendFunc.src, _blendFunc.dst );
//    
//	ccGLBindTexture2D( [_texture name] );
//    
//	//
//	// Attributes
//	//
//    
//	ccGLEnableVertexAttribs( kCCVertexAttribFlag_PosColorTex );
//    
//#define kQuadSize sizeof(_quad.bl)
//	long offset = (long)&_quad;
//    
//	// vertex
//	NSInteger diff = offsetof( ccV3F_C4B_T2F, vertices);
//	glVertexAttribPointer(kCCVertexAttrib_Position, 3, GL_FLOAT, GL_FALSE, kQuadSize, (void*) (offset + diff));
//    
//	// texCoods
//	diff = offsetof( ccV3F_C4B_T2F, texCoords);
//	glVertexAttribPointer(kCCVertexAttrib_TexCoords, 2, GL_FLOAT, GL_FALSE, kQuadSize, (void*)(offset + diff));
//    
//	// color
//	diff = offsetof( ccV3F_C4B_T2F, colors);
//	glVertexAttribPointer(kCCVertexAttrib_Color, 4, GL_UNSIGNED_BYTE, GL_TRUE, kQuadSize, (void*)(offset + diff));
//    
//    
//	glDrawArrays(GL_TRIANGLE_STRIP, 0, 4);
//    
//	CHECK_GL_ERROR_DEBUG();
//    
//	CC_INCREMENT_GL_DRAWS(1);
//    
//	CC_PROFILER_STOP_CATEGORY(kCCProfilerCategorySprite, @"CCSprite - draw");
//}
@end

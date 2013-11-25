//
//  gShader_RGBToGray_frag.h
//  GraySprite
//
//  Created by guodong on 13-11-25.
//
//

"#ifdef GL_ES                                                   \n\
precision mediump float;                                        \n\
#endif                                                          \n\
uniform sampler2D u_texture;                                    \n\
varying vec2 v_texCoord;                                        \n\
varying vec4 v_fragmentColor;                                   \n\
void main(void)                                                 \n\
{                                                               \n\
    // Convert to greyscale using NTSC weightings               \n\
    vec4 col = texture2D(u_texture, v_texCoord);                \n\
    float grey = dot(col.rgb, vec3(0.299, 0.587, 0.114));       \n\
    gl_FragColor = vec4(grey, grey, grey, col.a);               \n\
}                                                               \n\
";
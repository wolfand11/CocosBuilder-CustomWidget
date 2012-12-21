//
//  GList.h
//  CocosBuilder
//
//  Created by GuoDong on 12-12-19.
//
//

#import "GAbstractSlideLayer.h"

@interface GList : GAbstractSlideLayer
{
    BOOL m_needAdjustPos;
    BOOL m_needAdjustTouchRectOrigin;
}

-(void) setPosition:(CGPoint)position;
-(void) setTouchRectOrigin:(CGPoint)touchRectOrigin;
@end

//
//  GUtility.m
//  CocosBuilder
//
//  Created by guodong on 12-11-20.
//
//

#import "GUtility.h"

@implementation GUtility

+(CGSize) MaxCGSize:(CGSize*)size1,...
{
    CGSize maxSize = CGSizeZero;
    CGSize* arg;
    va_list argList;
    va_start(argList, size1);
    while ( (arg=va_arg(argList, CGSize*)) )
    {
        if (maxSize.width < arg->width)
        {
            maxSize.width = arg->width;
        }
        if (maxSize.height < arg->height)
        {
            maxSize.height = arg->height;
        }
    }
    va_end(argList);
    return maxSize;
}

+(float)    GetFloatAbsoluteValue:(float)value
{
    if (value<0.0f)
    {
        value = -value;
    }
    return value;
}

+(BOOL) IsPointA:(CGPoint)posA EqualToPointB:(CGPoint)posB
{
    float deltaX = ABS(posA.x - posB.x);
    float deltaY = ABS(posB.y - posB.y);
    
    if (deltaX < 0.5f && deltaY < 0.5f)
    {
        return YES;
    }
    return NO;
}

+(BOOL) IsSizeA:(CGSize)sizeA EqualToSizeB:(CGSize)sizeB
{
    float deltaWidth    = ABS(sizeA.width - sizeB.width);
    float deltaHeight   = ABS(sizeA.height - sizeB.height);
    if ( deltaWidth < 0.5f && deltaHeight < 0.5f )
    {
        return YES;
    }
    return NO;
}

+(CGSize) GetMaxContentSizeOfNode:(CCNode *)node
{
    CGSize temp = CGSizeZero;
    if (node)
    {
        // TODO:
    }
    return temp;
}
@end

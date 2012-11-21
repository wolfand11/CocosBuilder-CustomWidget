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

@end

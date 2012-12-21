//
//  GUtility.h
//  CocosBuilder
//
//  Created by guodong on 12-11-20.
//
//

#import <Foundation/Foundation.h>

@interface GUtility : NSObject
+(CGSize)   MaxCGSize:(CGSize*)size1,...;
+(BOOL)     IsPointA:(CGPoint)posA EqualToPointB:(CGPoint)posB;
+(BOOL)     IsSizeA:(CGSize)sizeA EqualToSizeB:(CGSize)sizeB;
+(float)    GetFloatAbsoluteValue:(float)value;
@end

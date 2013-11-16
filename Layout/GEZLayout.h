//
//  GEZLayout.h
//  CocosBuilder
//
//  Created by guodong on 13-11-15.
//
//

#import "GAbstractLayout.h"

@interface GEZLayout : GAbstractLayout
{
    int startShowPageIndex;
}
@property(readwrite,nonatomic,assign)int startShowPageIndex;
@end

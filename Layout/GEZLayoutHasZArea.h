//
//  GEZLayoutHasZArea.h
//  CocosBuilder
//
//  Created by guodong on 13-11-8.
//
//

#import "GAbstractLayout.h"

@interface GEZLayoutHasZArea : GAbstractLayout
{
    int startZoomItemsIndex;
    int zoomItemsCount;
    int showedItemsCount;
}
@property(nonatomic,readwrite,assign)int startZoomItemsIndex;
@property(nonatomic,readwrite,assign)int zoomItemsCount;
@property(nonatomic,readwrite,assign)int showedItemsCount;
@end

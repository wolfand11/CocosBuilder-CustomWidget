//
//  GEZLayoutHasZArea.h
//  CocosBuilder
//
//  Created by guodong on 13-11-8.
//
//

#import "GEZLayout.h"

@interface GEZLayoutHasZArea : GEZLayout
{
    int startZoomIndex;
    int zoomItemsCount;
    int showedItemsCount;
}
@property(nonatomic,readwrite,assign)int startZoomIndex;
@property(nonatomic,readwrite,assign)int zoomItemsCount;
@property(nonatomic,readwrite,assign)int showedItemsCount;
@end

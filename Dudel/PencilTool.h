//
//  PencilTool.h
//  Dudel
//
//  Created by wangyifei on 13-4-2.
//  Copyright (c) 2013年 Me. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Tool.h"
@interface PencilTool : NSObject<Tool>
{
    id <ToolDelegate>delegate;
    NSMutableArray *trackingTouchs;
    NSMutableArray *startingPoints;
    NSMutableArray *paths;
}
+(PencilTool *)sharedPencilTool;

@end

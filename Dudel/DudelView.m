//
//  DudelView.m
//  Dudel
//
//  Created by wangyifei on 13-4-2.
//  Copyright (c) 2013年 Me. All rights reserved.
//

#import "DudelView.h"

@implementation DudelView
@synthesize drawables;
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.drawables = [[NSMutableArray alloc]initWithCapacity:100];
    }
    return self;
}
-(id)initWithCoder:(NSCoder *)aDecoder{

    self = [super initWithCoder:aDecoder];
    if (self) {
        self.drawables = [[NSMutableArray alloc]initWithCapacity:100];
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    for (id<Drawable> d in drawables) {
        [d draw];
    }
    
    [self.delegate drawTemporary];
    // Drawing code
}




@end

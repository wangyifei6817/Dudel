//
//  DudelView.h
//  Dudel
//
//  Created by wangyifei on 13-4-2.
//  Copyright (c) 2013年 Me. All rights reserved.
//
@protocol DudelViewDelegate <NSObject>
-(void)drawTemporary;
@end
#import <UIKit/UIKit.h>
#import "Drawable.h"
@interface DudelView : UIView{

    IBOutlet id <DudelViewDelegate> delegate;
}
@property (strong,nonatomic) NSMutableArray *drawables;
@property (assign,nonatomic) IBOutlet id <DudelViewDelegate> delegate;
@end

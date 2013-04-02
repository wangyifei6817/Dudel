//
//  Tool.h
//  Dudel
//
//  Created by wangyifei on 13-4-2.
//  Copyright (c) 2013年 Me. All rights reserved.
//
@protocol ToolDelegate;
@protocol Drawable;
#import <Foundation/Foundation.h>

@protocol Tool <NSObject>
@property (assign,nonatomic) id<ToolDelegate >_delegate;
-(void)activate;
-(void)deactivate;

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event;
-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event;
-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event;
-(void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event;

-(void)drawTemporary;
@end

@protocol ToolDelegate <NSObject>

-(void)addDrawable:(id<Drawable>)d;
-(UIView *)viewForUseWithTool:(id<Tool>)t;
-(UIColor *)strokeColor;
-(UIColor *)fillColor;

@end

//
//  ViewController.m
//  Dudel
//
//  Created by wangyifei on 13-4-2.
//  Copyright (c) 2013年 Me. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize currentTool,strokeColor,fillColor,strokeWidth;
-(IBAction)touchfreehandButton:(id)sender{
    NSLog(@"曲线");
}
-(IBAction)touchellipseButton:(id)sender{
    NSLog(@"椭圆");
}
-(IBAction)touchrectangleButton:(id)sender{
    NSLog(@"矩形");
}
-(IBAction)touchlineButton:(id)sender{
    NSLog(@"直线");
}
-(IBAction)touchpencelButton:(id)sender{
    NSLog(@"折线");
}
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{

    [currentTool touchesBegan:touches withEvent:event];
    [dudelView setNeedsDisplay];
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{

    [currentTool touchesMoved:touches withEvent:event];
    [dudelView setNeedsDisplay];
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{

    [currentTool touchesEnded:touches withEvent:event];
    [dudelView setNeedsDisplay];
}

-(void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event{

    [currentTool touchesCancelled:touches withEvent:event];
    [dudelView setNeedsDisplay];
}
-(void)setCurrentTool:(id<Tool>)t{

    [currentTool deactivate];
    if (t!=currentTool) {
        currentTool._delegate = self;
    }
    [currentTool activate];
    [dudelView setNeedsDisplay];
}

-(void)addDrawable:(id<Drawable>)d{

    [dudelView.drawables  addObject:d];
    [dudelView setNeedsDisplay];
}

-(UIView *)viewForUseWithTool:(id<Tool>)t{

    return  self.view;
}

-(void)drawTemporary{
    NSLog(@"run me");
    [self.currentTool drawTemporary];
}
- (void)viewDidLoad
{
    dudelView.delegate = self;
    self.strokeColor = [UIColor blackColor];
    self.fillColor = [UIColor lightGrayColor];
    self.strokeWidth =  2.0;
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

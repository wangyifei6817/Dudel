//
//  ViewController.h
//  Dudel
//
//  Created by wangyifei on 13-4-2.
//  Copyright (c) 2013年 Me. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DudelView.h"
#import "Tool.h"
@interface ViewController : UIViewController<DudelViewDelegate,ToolDelegate>
{
    IBOutlet DudelView *dudelView;
    IBOutlet UIBarButtonItem *freehandButton;
    IBOutlet UIBarButtonItem *ellipseButton;
    IBOutlet UIBarButtonItem *rectangleButton;
    IBOutlet UIBarButtonItem *lineButton;
    IBOutlet UIBarButtonItem *pencelButton;
    
    id <Tool> currentTool;
    
    UIColor *strokeColor;
    UIColor *fillColor;
    CGFloat strokeWidth;
}
@property (strong ,nonatomic)UIColor *strokeColor;
@property (strong ,nonatomic)UIColor *fillColor;
@property (assign ,nonatomic)CGFloat strokeWidth;
@property (strong ,nonatomic)id <Tool> currentTool;
-(IBAction)touchfreehandButton:(id)sender;
-(IBAction)touchellipseButton:(id)sender;
-(IBAction)touchrectangleButton:(id)sender;
-(IBAction)touchlineButton:(id)sender;
-(IBAction)touchpencelButton:(id)sender;
@end

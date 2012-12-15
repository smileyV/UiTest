//
//  U1ViewController.h
//  UiTest
//
//  Created by admin on 12-12-12.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@class YellowViewController;

@interface U1ViewController : UIViewController

@property (strong, nonatomic) YellowViewController *yellowViewController;

- (IBAction)SwitchView:(id)sender;
@end

//
//  YellowViewController.h
//  UiTest
//
//  Created by admin on 12-12-12.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YellowViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
@property (strong, nonatomic) NSArray *listData;
@end

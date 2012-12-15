//
//  newTableViewCell.m
//  UiTest
//
//  Created by admin on 12-12-13.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "newTableViewCell.h"
#define KeyTitleValueTag 1
#define KeySubValueTag 2
@implementation newTableViewCell
@synthesize Title;
@synthesize Sub;
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) 
    {
        CGRect nameLableRect = CGRectMake(0, 5, 70, 15);
        UILabel *TitleLable = [[UILabel alloc]initWithFrame:nameLableRect];
        TitleLable.textAlignment = UITextAlignmentRight;
        TitleLable.text = @"Title";
        TitleLable.font = [UIFont boldSystemFontOfSize:12];
        [self.contentView addSubview:TitleLable];
        
        CGRect SubLableRect = CGRectMake(0, 26, 70, 15);
        UILabel *SubLable = [[UILabel alloc]initWithFrame:SubLableRect];
        SubLable.textAlignment = UITextAlignmentRight;
        SubLable.text = @"Sub";
        SubLable.font = [UIFont boldSystemFontOfSize:12];
        [self.contentView addSubview:SubLable];
        
        CGRect TitleValueRect = CGRectMake(80, 5, 200, 15);
        UILabel *TitleValueLable = [[UILabel alloc]initWithFrame:TitleValueRect];
        TitleValueLable.tag = KeyTitleValueTag;
        [self.contentView addSubview:TitleValueLable];
        
        CGRect SubValueRect = CGRectMake(80, 25, 200, 15);
        UILabel *SubValueLable = [[UILabel alloc]initWithFrame:SubValueRect];
        SubValueLable.tag = KeySubValueTag;
        [self.contentView addSubview:SubValueLable];

        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
-(void)setTitle:(NSString*)n
{
    Title = [n copy];
    UILabel *Titlelable = ( UILabel*)[self.contentView viewWithTag:KeyTitleValueTag];
    Titlelable.text = self.Title;
}
-(void)setSub:(NSString *)sub
{
    Sub = [sub copy];
    UILabel *Sublable = (UILabel*)[self.contentView viewWithTag:KeySubValueTag];
    Sublable.text = self.Sub;
}
@end

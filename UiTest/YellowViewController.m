//
//  YellowViewController.m
//  UiTest
//
//  Created by admin on 12-12-12.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "YellowViewController.h"
#import "newTableViewCell.h"
@implementation YellowViewController
@synthesize listData;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) 
    {
        NSArray *array = [[NSArray alloc]initWithObjects:@"111",@"222",@"333", nil];
        self.listData = array;
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    self.listData = nil;
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    NSDictionary *row1 = [[NSDictionary alloc]initWithObjectsAndKeys:@"row1 Title",@"Title",@"row1 Sub",@"Sub", nil];
    NSDictionary *row2 = [[NSDictionary alloc]initWithObjectsAndKeys:@"row2 Title",@"Title",@"row2 Sub",@"Sub", nil];
    NSDictionary *row3 = [[NSDictionary alloc]initWithObjectsAndKeys:@"row3 Title",@"Title",@"row3 Sub",@"Sub", nil];
    NSDictionary *row4 = [[NSDictionary alloc]initWithObjectsAndKeys:@"row4 Title",@"Title",@"row4 Sub",@"Sub", nil];
    NSDictionary *row5 = [[NSDictionary alloc]initWithObjectsAndKeys:@"row5 Title",@"Title",@"row5 Sub",@"Sub", nil];
    self.listData = [[NSArray alloc]initWithObjects:row1,row2,row3,row4,row5, nil];

}


- (void)viewDidUnload
{
    [super viewDidUnload];
        // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
	return YES;
}
-(NSInteger)tableView:(UITableView*)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.listData count];
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *title = @"CellTableIden";
    newTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:title];
    if (cell == nil)
    {
        cell = [[newTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:title];
    }
    NSInteger row = [indexPath row];
    NSDictionary *rowdata = [self.listData objectAtIndex:row];
    cell.Title = [rowdata objectForKey:@"Title"];
    cell.Sub = [rowdata objectForKey:@"Sub"];
    return  cell;
}
/*
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *SimpleTableIdentifier =@"SimpleTableidentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:SimpleTableIdentifier];
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:SimpleTableIdentifier];
    }
    UIImage *image = [UIImage imageNamed:@"Letter"];
    cell.imageView.image = image;
    NSInteger row = [indexPath row];
    cell.textLabel.text = [self.listData objectAtIndex:row];
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSInteger rowCount = [indexPath row];
    NSString *rowValue = [self.listData objectAtIndex:rowCount];
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"row select" message:rowValue delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alert show];
}
*/
@end

//
//  U1ViewController.m
//  UiTest
//
//  Created by admin on 12-12-12.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "U1ViewController.h"
#import "YellowViewController.h"
@implementation U1ViewController
@synthesize yellowViewController;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    //self.yellowViewController = [[YellowViewController alloc]initWithNibName:@"YellowView" bundle:nil];
    //[self.view insertSubview:self.yellowViewController.view atIndex:0];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    self.yellowViewController = nil;
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return YES;
}

- (IBAction)SwitchView:(id)sender
{
    [UIView beginAnimations:@"View Filp" context:nil];
    [UIView setAnimationDuration:1.25];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    
    if (self.yellowViewController == nil)
    {
        self.yellowViewController = [[YellowViewController alloc]initWithNibName:@"YellowView" bundle:nil];
        
    }
    
    [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight forView:self.view cache:YES];
    
    [self.view insertSubview:self.yellowViewController.view atIndex:1];
    [UIView commitAnimations];
    
}

@end

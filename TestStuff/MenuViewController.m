//
//  MenuViewController.m
//  TestStuff
//
//  Created by Anish Basu on 2/27/14.
//  Copyright (c) 2014 Anish Basu. All rights reserved.
//

#import "MenuViewController.h"
#import "SlideOutViewController.h"
#import <FXBlurView/FXBlurView.h>

@interface MenuViewController ()
@property (nonatomic, weak) IBOutlet FXBlurView *blurView;
@end

@implementation MenuViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)loadView
{
    self.view = [[FXBlurView alloc] initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
    self.view.tintColor = [UIColor whiteColor];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    /*
    self.view.backgroundColor = [UIColor clearColor];
    
    // Set blurring
    self.blurView.blurEnabled = YES;
    self.blurView.dynamic = YES;

    self.blurView.tintColor = [UIColor clearColor];
    //self.blurView.tintColor = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.65];
     */
    
    NSLog(@"MenuVC viewDidLoad");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

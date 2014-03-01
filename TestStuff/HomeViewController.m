//
//  HomeViewController.m
//  TestStuff
//
//  Created by Anish Basu on 2/27/14.
//  Copyright (c) 2014 Anish Basu. All rights reserved.
//

#import "HomeViewController.h"
#import <FXBlurView/FXBlurView.h>

NSString *const NOTIFICATION_HOME_VIEW_DID_LOAD = @"HomeViewDidLoad";

@interface HomeViewController ()
@property (nonatomic, weak) IBOutlet FXBlurView *blurBox;
@end

@implementation HomeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor blueColor];
    self.navigationItem.title = @"Center View";
    
    NSLog(@"HomeVC viewDidLoad");
    [[NSNotificationCenter defaultCenter] postNotificationName:NOTIFICATION_HOME_VIEW_DID_LOAD object:self];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

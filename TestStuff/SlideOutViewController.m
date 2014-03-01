//
//  SlideOutViewController.m
//  TestStuff
//
//  Created by Anish Basu on 2/27/14.
//  Copyright (c) 2014 Anish Basu. All rights reserved.
//

#import "SlideOutViewController.h"
#import "MenuViewController.h"
#import "HomeViewController.h"

@interface SlideOutViewController ()
@property (nonatomic, strong) UINavigationController *navController;
@property (nonatomic, strong) MenuViewController *menuViewController;
@property (nonatomic, strong) HomeViewController *homeViewController;
@end

@implementation SlideOutViewController

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
    UIView* view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
    
    _navController = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"SlideOutNagivationController"];
    [self addChildViewController:_navController];
    [view addSubview:_navController.view];
    
    MenuViewController *menuVC = [[UIStoryboard storyboardWithName:@"Main" bundle:Nil] instantiateViewControllerWithIdentifier:@"MenuViewController"];
    [self addChildViewController:menuVC];
    [view addSubview:menuVC.view];

    self.view = view;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    NSLog(@"SlideOutVC viewDidLoad");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

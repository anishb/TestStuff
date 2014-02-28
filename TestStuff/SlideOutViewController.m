//
//  SlideOutViewController.m
//  TestStuff
//
//  Created by Anish Basu on 2/27/14.
//  Copyright (c) 2014 Anish Basu. All rights reserved.
//

#import "SlideOutViewController.h"

@interface SlideOutViewController ()
@property (nonatomic, strong) UINavigationController *navController;


@end

@implementation SlideOutViewController

- (id)initWithLeftViewController:(UIViewController *)leftViewController
         andCenterViewController:(UIViewController<CenterViewControllerProtocol> *)centerViewController
{
    self = [super init];
    if (self) {
        _leftViewController = leftViewController;
        _centerViewController = centerViewController;
    }
    return self;
}

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
    NSAssert(_leftViewController != nil, @"Left view controller has not been set!");
    NSAssert(_centerViewController != nil, @"Center view controller has not been set!");
    
    UIView* view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
    
    _navController = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"SlideOutNagivationController"];
    [self addChildViewController:_navController];
    [view addSubview:_navController.view];
    
    /*
    [self addChildViewController:_centerViewController];
    _centerViewController.view.frame = CGRectMake(view.frame.size.width / 2,
                                                  0,
                                                  _centerViewController.view.frame.size.width,
                                                  _centerViewController.view.frame.size.height);
    [view addSubview:_centerViewController.view];
     */
    
    [self addChildViewController:_leftViewController];
    /*
    _leftViewController.view.frame = CGRectMake(-view.frame.size.width / 2,
                                                0,
                                                _leftViewController.view.frame.size.width,
                                                _leftViewController.view.frame.size.height);
     */
    [view addSubview:_leftViewController.view];
    
    self.view = view;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


/*
- (void)setLeftViewController:(UIViewController *)leftViewController
{
    [self addChildViewController:leftViewController];
    leftViewController.view.frame = CGRectMake(100,
                                               0,
                                               leftViewController.view.frame.size.width,
                                               leftViewController.view.frame.size.height);
    
    
}



- (void)setCenterViewController:(UIViewController *)centerViewController
{
    self.navController = [[UINavigationController alloc] initWithRootViewController:centerViewController];
}
 */

@end

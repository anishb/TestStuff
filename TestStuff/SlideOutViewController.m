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

CGFloat const MENU_SLIDE_DURATION = 0.75;
CGFloat const MENU_SLIDE_DELAY = 0.0;

@interface SlideOutViewController () <HomeViewControllerDelegate, MenuViewControllerDelegate>
@property (nonatomic, strong) UINavigationController *navController;
@property (nonatomic, strong) MenuViewController *menuViewController;
@property (nonatomic, strong) HomeViewController *homeViewController;
@property (nonatomic) BOOL menuActive;
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
    HomeViewController *homeVC = (HomeViewController *)_navController.viewControllers[0];
    homeVC.delegate = self;
    [self addChildViewController:_navController];
    [view addSubview:_navController.view];
    
    _menuViewController = [[UIStoryboard storyboardWithName:@"Main" bundle:Nil] instantiateViewControllerWithIdentifier:@"MenuViewController"];
    _menuViewController.delegate = self;
    [self addChildViewController:_menuViewController];
    _menuViewController.view.frame = CGRectMake(-_menuViewController.view.frame.size.width,
                                                0,
                                                _menuViewController.view.frame.size.width,
                                                _menuViewController.view.frame.size.height);
     
    [view addSubview:_menuViewController.view];

    self.view = view;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    NSLog(@"SlideOutVC viewDidLoad");
    _menuActive = NO;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - HomeViewControllerDelegate

- (void)showMenu
{
    if (!_menuActive) {
        [UIView animateWithDuration:MENU_SLIDE_DURATION
                              delay:MENU_SLIDE_DELAY
                            options:UIViewAnimationOptionCurveLinear | UIViewAnimationOptionBeginFromCurrentState
                         animations:^{
                             CGRect menuFrame = _menuViewController.view.frame;
                             _menuViewController.view.frame = CGRectMake(0, 0, menuFrame.size.width, menuFrame.size.height);
                         } completion:nil];
        _menuActive = YES;
    }

}

#pragma mark - MenuViewControllerDelegate

- (void)hideMenu
{
    if (_menuActive) {
        [UIView animateWithDuration:MENU_SLIDE_DURATION
                              delay:MENU_SLIDE_DELAY
                            options:UIViewAnimationOptionCurveEaseInOut
                         animations:^{
                             CGRect menuFrame = _menuViewController.view.frame;
                             _menuViewController.view.frame = CGRectMake(-menuFrame.size.width, 0, menuFrame.size.width, menuFrame.size.height);
                         } completion:nil];
        _menuActive = NO;
    }
}

@end

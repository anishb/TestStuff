//
//  MenuViewController.m
//  TestStuff
//
//  Created by Anish Basu on 2/27/14.
//  Copyright (c) 2014 Anish Basu. All rights reserved.
//

#import "MenuViewController.h"
#import "SlideOutViewController.h"
#import "CBSiBlurView.h"

@interface MenuViewController ()
@property (nonatomic, weak) IBOutlet CBSiBlurView *blurView;
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

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor clearColor];
    
    // Set blurring
    self.blurView.blurTintColor = [UIColor clearColor];

    // Add gesture recognizers
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(viewTapped:)];
    [self.view addGestureRecognizer:tapGesture];
    UISwipeGestureRecognizer *swipeGesture = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(viewSwiped:)];
    swipeGesture.direction = UISwipeGestureRecognizerDirectionLeft;
    [self.view addGestureRecognizer:swipeGesture];
    
    
    NSLog(@"MenuVC viewDidLoad");
}

- (void)viewTapped:(UIGestureRecognizer *)gesture
{
    if ([self.delegate respondsToSelector:@selector(hideMenu)]) {
        [self.delegate hideMenu];
    }
}

- (void)viewSwiped:(UISwipeGestureRecognizer *)gesture
{
    if ([self.delegate respondsToSelector:@selector(hideMenu)]) {
        [self.delegate hideMenu];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

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
#import "MenuTableViewCell.h"

@interface MenuViewController () <UITableViewDataSource, UITableViewDelegate, UIGestureRecognizerDelegate>
@property (nonatomic, weak) IBOutlet CBSiBlurView *blurView;
@property (nonatomic, weak) IBOutlet UITableView *tableView;
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
    
    // Setup table view
    self.tableView.backgroundColor = [UIColor clearColor];
    self.tableView.opaque = NO;

    // Add gesture recognizers
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(viewTapped:)];
    [self.view addGestureRecognizer:tapGesture];
    tapGesture.delegate = self;
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

#pragma mark - UIGestureRecognizerDelegate

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch
{
    if ([touch.view isDescendantOfView:self.view]) {
        return NO;
    }
    return YES;
}

#pragma mark - UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"MenuTableViewCell";
    MenuTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[MenuTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    cell.backgroundColor = [UIColor clearColor];
    cell.opaque = NO;
    cell.menuItemLabel.alpha = 1.0f;
    cell.menuItemLabel.textColor = [UIColor colorWithRed:20.0 green:59.0 blue:163.0 alpha:1.0f];
    cell.menuItemLabel.font = [UIFont fontWithName:@"HelveticaNeue" size:14.0];
    cell.userInteractionEnabled = YES;
    
    cell.menuItemLabel.text = @"Foo Bar";
    
    
    return cell;
}

#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}


@end

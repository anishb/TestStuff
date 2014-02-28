//
//  MenuViewController.m
//  TestStuff
//
//  Created by Anish Basu on 2/27/14.
//  Copyright (c) 2014 Anish Basu. All rights reserved.
//

#import "MenuViewController.h"
#import "AMBlurView.h"

@interface MenuViewController ()
@property (nonatomic, weak) IBOutlet AMBlurView *blurView;
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
    CGFloat red, green, blue, alpha;
    if ([[UIColor redColor] getRed:&red green:&green blue:&blue alpha:&alpha]) {
        NSLog(@"R:%f G:%f B:%f a:%f", red, green, blue, alpha);
    }
    
    
    //self.blurView.blurTintColor = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.65];
    //self.blurView.blurTintColor = [UIColor grayColor];
    //self.blurView.alpha = 1.0;
    //self.blurView.opaque = NO;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

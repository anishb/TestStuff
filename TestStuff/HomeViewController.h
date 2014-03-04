//
//  HomeViewController.h
//  TestStuff
//
//  Created by Anish Basu on 2/27/14.
//  Copyright (c) 2014 Anish Basu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SlideOutViewController.h"

@protocol HomeViewControllerDelegate <NSObject>
- (void)slideMenu;
@end

@interface HomeViewController : UIViewController

@property (nonatomic, weak) id<HomeViewControllerDelegate> delegate;

@end

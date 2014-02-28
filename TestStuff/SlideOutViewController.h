//
//  SlideOutViewController.h
//  TestStuff
//
//  Created by Anish Basu on 2/27/14.
//  Copyright (c) 2014 Anish Basu. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol CenterViewControllerProtocol <NSObject>


@end

@interface SlideOutViewController : UIViewController

@property (nonatomic, strong) UIViewController *leftViewController;
@property (nonatomic, strong) UIViewController<CenterViewControllerProtocol> *centerViewController;

- (id)initWithLeftViewController:(UIViewController *)leftViewController
         andCenterViewController:(UIViewController<CenterViewControllerProtocol> *)centerViewController;

@end

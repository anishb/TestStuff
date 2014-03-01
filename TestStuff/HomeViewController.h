//
//  HomeViewController.h
//  TestStuff
//
//  Created by Anish Basu on 2/27/14.
//  Copyright (c) 2014 Anish Basu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SlideOutViewController.h"

extern NSString *const NOTIFICATION_HOME_VIEW_DID_LOAD;

@interface HomeViewController : UIViewController

@property (nonatomic, weak) IBOutlet UIImageView *flowerView;

@end

//
//  MenuTableViewCell.m
//  TestStuff
//
//  Created by Anish Basu on 3/4/14.
//  Copyright (c) 2014 Anish Basu. All rights reserved.
//

#import "MenuTableViewCell.h"


@implementation MenuTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
    if (self.selected) {
        self.menuItemLabel.font = [UIFont fontWithName:@"HelveticaNeue-Bold" size:14.0];
        self.menuItemLabel.textColor = [UIColor colorWithRed:102.0 green:102.0 blue:102.0 alpha:1.0];
    } else {
        self.menuItemLabel.textColor = [UIColor colorWithRed:20.0 green:59.0 blue:163.0 alpha:1.0f];
        self.menuItemLabel.font = [UIFont fontWithName:@"HelveticaNeue" size:14.0];
    }
}


@end

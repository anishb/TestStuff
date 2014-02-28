//
//  MenuItemCell.m
//  TestStuff
//
//  Created by Anish Basu on 2/28/14.
//  Copyright (c) 2014 Anish Basu. All rights reserved.
//

#import "MenuItemCell.h"

@interface MenuItemCell()
@property (nonatomic, weak) IBOutlet UILabel *menuTitleLabel;
@end

@implementation MenuItemCell

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
}

- (void)setMenuTitle:(NSString *)menuTitle
{
    self.menuTitleLabel.text = menuTitle;
}

- (NSString *)menuTitle
{
    return self.menuTitleLabel.text;
}

@end

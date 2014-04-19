//
//  TimeLineCell.m
//  TwitterClient01
//
//  Created by Satoshi Nakagawa on 2014/04/12.
//  Copyright (c) 2014年 nakasen.com. All rights reserved.
//

#import "TimeLineCell.h"

@implementation TimeLineCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        _paddingTop = 5;
        _paddingBottom = 5;
        
        _tweetTextLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _tweetTextLabel.font = [UIFont systemFontOfSize:14.0f];
        _tweetTextLabel.textColor = [UIColor blackColor];
        _tweetTextLabel.numberOfLines = 0;
        [_tweetTextLabel sizeToFit];
        [self.contentView addSubview:_tweetTextLabel];
        
        _nameLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _nameLabel.font = [UIFont systemFontOfSize:12.0f];
        _nameLabel.textColor = [UIColor blackColor];
        [self.contentView addSubview:_nameLabel];
        
        _profileImageView = [[UIImageView alloc] initWithFrame:CGRectZero];
        _profileImageView.image = _image;
        [self.contentView addSubview:_profileImageView];
    }
    return self;
}

- (void)layoutSubviews
{
    [super layoutSubviews];

    self.profileImageView.frame = CGRectMake(5, self.paddingTop, 48, 48);
    self.tweetTextLabel.frame = CGRectMake(58, self.paddingTop, 257, self.tweetTextLabelHeight);
    self.nameLabel.frame = CGRectMake(58, self.paddingTop + self.tweetTextLabelHeight + 10, 257, 15);
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end

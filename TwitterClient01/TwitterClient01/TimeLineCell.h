//
//  TimeLineCell.h
//  TwitterClient01
//
//  Created by Satoshi Nakagawa on 2014/04/12.
//  Copyright (c) 2014年 nakasen.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TimeLineCell : UITableViewCell

@property (nonatomic, strong) UILabel *tweetTextLabel;
@property (nonatomic, strong) UILabel *nameLabel;
@property (nonatomic, strong) UIImageView *profileImageView;
@property (nonatomic, strong) UIImage *image;
@property (nonatomic) CGFloat tweetTextLabelHeight;
@property (nonatomic) CGFloat paddingTop;
@property (nonatomic) CGFloat paddingBottom;

@end

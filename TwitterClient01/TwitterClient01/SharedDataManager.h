//
//  SharedDataManager.h
//  TwitterClient01
//
//  Created by Satoshi Nakagawa on 2014/05/17.
//  Copyright (c) 2014年 nakasen.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SharedDataManager : NSObject
 
@property (nonatomic) CGFloat marginX1;
@property (nonatomic) CGFloat marginX2;
@property (nonatomic) CGFloat marginX3;
@property (nonatomic) CGFloat marginY1;
@property (nonatomic) CGFloat marginY2;
@property (nonatomic) CGFloat marginY3;

@property (nonatomic, strong) UIFont *tweetTextLabelFont;
@property (nonatomic, strong) UIFont *nameLabelFont;
@property (nonatomic) CGFloat tweetTextLabelLineHeight;

@property (nonatomic) CGFloat imageX;
@property (nonatomic) CGFloat imageY;
@property (nonatomic) CGFloat tweetTextLabelX;
@property (nonatomic) CGFloat nameLabelY;


+ (SharedDataManager *)sharedManager;

- (NSAttributedString *)attributedText:(NSString *)labelText;
- (CGFloat)tweetTextLabelHeight:(NSAttributedString *)attributedText;

@end

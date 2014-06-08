//
//  Report.h
//  Ex033
//
//  Created by Satoshi Nakagawa on 2014/06/07.
//  Copyright (c) 2014年 nakasen.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Report : NSObject

@property (nonatomic, copy) NSString *gno;
// @property (nonatomic, copy) NSString *「氏名??」;
// @property (nonatomic, copy) NSDictionary *「成績??」;

                 // 平均点を求めるメソッドの宣言
- (void)display; // NSLogで一覧表示するメソッド

@end


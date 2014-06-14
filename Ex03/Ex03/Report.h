//
//  Report.h
//  Ex03
//
//  Created by Satoshi Nakagawa on 2014/04/07.
//  Copyright (c) 2014年 nakasen.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Report : NSObject

@property (nonatomic, copy) NSString *studentIDNo;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSDictionary *scoreDict;

- (float)average:(NSDictionary *)score; // 平均点を求めるメソッド
- (void)display; // NSLogで一覧表示するメソッド

@end

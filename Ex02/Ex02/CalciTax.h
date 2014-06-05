//
//  CalciTax.h
//  Ex02
//
//  Created by Satoshi Nakagawa on 2014/04/05.
//  Copyright (c) 2014年 nakasen.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalciTax : NSObject

@property (nonatomic) float tax; // @propertyでセッタ、ゲッタが自動生成される。

- (float)iTax:(int)price tax:(float)taxRate;

@end
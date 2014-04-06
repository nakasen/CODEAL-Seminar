//
//  CalciTax.h
//  Ex02_Property
//
//  Created by Satoshi Nakagawa on 2014/04/06.
//  Copyright (c) 2014年 nakasen.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalciTax : NSObject

@property (nonatomic) float tax;

// セッタ、ゲッタの定義は不要
- (float)iTax:(int)price tax:(float)taxRate;

@end

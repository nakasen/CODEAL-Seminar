//
//  CalciTax.h
//  Ex02
//
//  Created by Satoshi Nakagawa on 2014/04/05.
//  Copyright (c) 2014年 nakasen.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalciTax : NSObject

- (float)iTax:(int)price tax:(float)taxRate;

@end
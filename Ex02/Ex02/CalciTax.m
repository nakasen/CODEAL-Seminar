//
//  CalciTax.m
//  Ex02
//
//  Created by Satoshi Nakagawa on 2014/04/05.
//  Copyright (c) 2014年 nakasen.com. All rights reserved.
//

#import "CalciTax.h"

@implementation CalciTax

- (void)setTax:(float)taxRate
{
    tax = taxRate;
}

- (float)getTax
{
    return tax;
}

- (float)iTax:(int)price tax:(float)taxRate
{
    return price * (float)(1.0f + taxRate);
}

@end

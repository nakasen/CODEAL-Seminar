//
//  SharedDataManager.m
//  TwitterClient01
//
//  Created by Satoshi Nakagawa on 2014/05/17.
//  Copyright (c) 2014年 nakasen.com. All rights reserved.
//

#import "SharedDataManager.h"

@implementation SharedDataManager

// ************************************************************
// 　以下の３つのメソッドが典型的なシングルトンオブジェクトの生成パターン
// 　マルチスレッド下でもシングルトンが保証される
// 　initメソッドを上書きすることによって[[〜 alloc] init]で
// 　別インスタンスが生成されることを防いでいる
// ************************************************************

+ (SharedDataManager *)sharedManager
{
    static SharedDataManager *_sharedManager = nil;
    static dispatch_once_t  onceToken;
    dispatch_once(&onceToken, ^{
        _sharedManager = [[SharedDataManager alloc] initSharedManager];
    });
    
    return _sharedManager;
}

- (id)initSharedManager
{
    self = [super init];
    if (self) {
        _marginX1 = 5;
        _marginX2 = 5;
        _marginX3 = 5;
        _marginY1 = 5;
        _marginY2 = 10;
        _marginY3 = 5;
        
        _tweetTextLabelFont = [UIFont fontWithName:@"HiraKakuProN-W3" size:13];
        _nameLabelFont = [UIFont systemFontOfSize:12.0];
        _tweetTextLabelLineHeight = _tweetTextLabelFont.lineHeight * 1.5f;
        
        _imageX = 48;
        _imageY = 48;
        _tweetTextLabelX = 320 - (_marginX1 + _imageX + _marginX2 + _marginX3);
        _nameLabelY = 15;
    }
    return self;
}

- (id)init
{
    NSLog(@"Error : SharedDataManager initialize error. Use sharedManager class method.");
    return nil;
}


// ラベルの文字列を属性付き文字列に変換
- (NSAttributedString *)attributedText:(NSString *)labelText
{
    // ラベル文字列
    NSString *string = (!labelText) ? @"" : labelText;
    
    // フォントを指定
    UIFont *font = self.tweetTextLabelFont;
    
    // カスタムLineHeightを指定
    CGFloat customLineHeight = self.tweetTextLabelLineHeight;
    
    // パラグラフスタイルにlineHeightをセット
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    paragraphStyle.minimumLineHeight = customLineHeight;
    paragraphStyle.maximumLineHeight = customLineHeight;
    
    // 属性としてパラグラフスタイルとフォントをセット
    NSDictionary *attributes = @{NSParagraphStyleAttributeName:paragraphStyle,
                                 NSFontAttributeName:font};
    
    // NSAttributedStringを生成して文字列と属性をセット
    NSMutableAttributedString *attributedString =
    [[NSMutableAttributedString alloc] initWithString:string attributes:attributes];
    
    return attributedString;
}

// 属性付き文字列からラベルの高さを求める
- (CGFloat)tweetTextLabelHeight:(NSAttributedString *)attributedText
{
    // ラベルのフレーム定義
    CGRect labelRect =
    [attributedText boundingRectWithSize:CGSizeMake(self.tweetTextLabelX, CGFLOAT_MAX)
                                 options:NSStringDrawingUsesLineFragmentOrigin
                                 context:nil];
    
    return labelRect.size.height;
}

@end

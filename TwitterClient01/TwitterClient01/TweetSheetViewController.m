//
//  TweetSheetViewController.m
//  TwitterClient01
//
//  Created by Satoshi Nakagawa on 2015/01/24.
//  Copyright (c) 2015年 nakasen.com. All rights reserved.
//

#import "TweetSheetViewController.h"

@interface TweetSheetViewController ()

@property (weak, nonatomic) IBOutlet UITextView *tweetTextView;
@property (nonatomic, copy) NSString *httpErrorMessage;

@end

@implementation TweetSheetViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.tweetTextView.delegate = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)editEndAction:(id)sender {
    [self.tweetTextView resignFirstResponder];
}

- (IBAction)tweetAction:(id)sender {
    ACAccountStore *accountStore = [[ACAccountStore alloc] init];
    ACAccount *account = [accountStore accountWithIdentifier:self.identifier];
    NSString *tweetString = self.tweetTextView.text;

    NSURL *url = [NSURL URLWithString:@"https://api.twitter.com"
                  @"/1.1/statuses/update.json"];
    // NSURL *url = [NSURL URLWithString:@"https://api.twitter.com"
    //               @"/1.1/statuses/update_with_media.json"]; // 画像付きツイートの場合
    NSDictionary *params = @{@"status" : tweetString};
    SLRequest *request = [SLRequest requestForServiceType:SLServiceTypeTwitter
                                            requestMethod:SLRequestMethodPOST
                                                      URL:url
                                               parameters:params];
    // UIImage *image = [UIImage imageNamed:@"testIcon.png"]; // 画像付きの場合
    // NSData *imageData = UIImageJPEGRepresentation(image, 1.f); // 画像がJPEGファイルの場合
    // NSData *imageData = UIImagePNGRepresentation(image); // 以下は画像がPNGファイルの場合
    // [request addMultipartData:imageData
    //                  withName:@"media[]"
    //                      type:@"image/png"
    //                  filename:@"testIcon.png"];
    request.account = account;
    [request performRequestWithHandler:^(NSData *responseData,
                                        NSHTTPURLResponse *urlResponse,
                                        NSError *error) {
        if (responseData) {
            self.httpErrorMessage = nil;
            if (urlResponse.statusCode >= 200 && urlResponse.statusCode < 300) {
                NSDictionary *postResponseData =
                [NSJSONSerialization JSONObjectWithData:responseData
                                                options:NSJSONReadingMutableContainers
                                                  error:NULL];
                NSLog(@"SUCESS! Created Tweet with ID* %@", postResponseData[@"id_str"]);
            } else { // HTTPエラー発生時
                self.httpErrorMessage =
                [NSString stringWithFormat:@"The response status code is %zd",
                 urlResponse.statusCode];
                NSLog(@"HTTP Error: %@", self.httpErrorMessage);
                // ツイート時のHTTPエラーメッセージを画面に表示する領域がない。今後の課題。
            }
        } else { // リクエスト送信エラー発生時
            NSLog(@"ERROR: An error occurred while posting: %@", [error localizedDescription]);
            // リクエスト時の送信エラーメッセージを画面に表示する領域がない。今後の課題。
        }
        dispatch_async(dispatch_get_main_queue(), ^{
            UIApplication *application = [UIApplication sharedApplication];
            application.networkActivityIndicatorVisible = NO; // インジケータOFF
            [self dismissViewControllerAnimated:YES completion:^{
                NSLog(@"Tweet Sheet has been dismissed.");
            }];
        });
    }];
}

- (IBAction)cancelAction:(id)sender {
    [self dismissViewControllerAnimated:YES completion:^{
        NSLog(@"Tweet Sheet has been dismissed.");
    }];
}

@end

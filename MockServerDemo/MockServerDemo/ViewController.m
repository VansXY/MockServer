//
//  ViewController.m
//  MockServerDemo
//
//  Created by HXB-xiaoYang on 2018/2/2.
//  Copyright © 2018年 VansXY. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.textField.text = @"http://www.apiopen.top:88/createStatisticsKey?appId=com.chat.peakchao&passWd=123456";
}

- (IBAction)requestData:(id)sender {
    
    __weak typeof(self) weakSelf = self;
    NSURLSession *session = [NSURLSession sharedSession];
    NSURL *url = [NSURL URLWithString:self.textField.text];
    NSURLSessionTask *task = [session dataTaskWithURL:url completionHandler:^(NSData *data, NSURLResponse *response, NSError* error) {
        // 默认是子线程.
        dispatch_async(dispatch_get_main_queue(), ^{
            weakSelf.textView.text = [NSString stringWithFormat:@"返回数据：\n%@", [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding]];
        });
    }];
    // 开启任务
    [task resume];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

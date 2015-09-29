//
//  ViewController.m
//  JSWebViewDemo
//
//  Created by majian on 15/9/29.
//  Copyright © 2015年 majian. All rights reserved.
//

#import "ViewController.h"
#import "PMFindHistory.h"
#import "PMPay.h"

#define kPMRemoteOK 0 //如果本地测试，则置为0，远程测试，置为1

@interface ViewController ()<UIWebViewDelegate>
@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (nonatomic,strong) JSContext * context;
@property (nonatomic,strong) PMFindHistory * findHistory;
@property (nonatomic,strong) PMPay * pay;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

#if kPMRemoteOK
    NSURL * addrURL = [NSURL URLWithString:@"http://h5test.snh48.com/hub1.html"];
#else
    NSURL *  addrURL = [[NSBundle mainBundle] URLForResource:@"index"
                                      withExtension:@"html"];
#endif
    
    NSURLRequest * urlRequest = [NSURLRequest requestWithURL:addrURL];
    [self.webView loadRequest:urlRequest];
}

#pragma mark - UIWebViewDelegate
- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType {
    return YES;
}

- (void)webViewDidFinishLoad:(UIWebView *)webView {
    self.context[@"findhistory"] = self.findHistory;
    self.context[@"pay"] = self.pay;
}

#pragma mark - Property Getter
- (JSContext *)context {
    if (_context) {
        return _context;
    }
    
    _context = [self.webView valueForKeyPath:@"documentView.webView.mainFrame.javaScriptContext"];
    
    [_context setExceptionHandler:^(JSContext * context, JSValue * value) {
        NSLog(@"faild");
    }];
    
    return _context;
}

- (PMFindHistory *)findHistory {
    if (_findHistory) {
        return _findHistory;
    }
    
    _findHistory = [[PMFindHistory alloc] init];
    
    return _findHistory;
}

- (PMPay *)pay {
    if (_pay) {
        return _pay;
    }
    
    _pay = [[PMPay alloc] init];
    
    return _pay;
}


@end

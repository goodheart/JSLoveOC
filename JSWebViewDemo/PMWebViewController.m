//
//  PMWebViewController.m
//  JSWebViewDemo
//
//  Created by majian on 15/9/29.
//  Copyright © 2015年 majian. All rights reserved.
//

#import "PMWebViewController.h"

@interface PMWebViewController ()<UIWebViewDelegate>
@property (nonatomic,copy) NSURL * requestURL;
@property (nonatomic,strong) UIWebView * webView;
@end

@implementation PMWebViewController
#pragma mark - initial Public Method
+ (id)webViewControllerWithURL:(NSURL *)url {
    PMWebViewController * webViewController = [[[self class] alloc] init];
    webViewController.requestURL = url;
    return webViewController;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:self.webView];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    [self.webView loadRequest:[NSURLRequest requestWithURL:self.requestURL]];
}

#pragma mark - UIWebViewDelegate
- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType {
    return YES;
}

- (void)webViewDidFinishLoad:(UIWebView *)webView {
    
}

#pragma mark - Property Method
- (UIWebView *)webView {
    if (_webView) {
        return _webView;
    }
    
    _webView = [[UIWebView alloc] initWithFrame:self.view.bounds];
    _webView.delegate = self;
    
    return _webView;
}

@end

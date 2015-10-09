//
//  PMWeb.m
//  JSWebViewDemo
//
//  Created by majian on 15/9/29.
//  Copyright © 2015年 majian. All rights reserved.
//

#import "PMWeb.h"

@implementation PMWeb
#pragma mark - PMWebProtocol
- (void)gotoDetail:(NSString *)urlStr {
    if (nil == self.delegate) {
        return;
    }
    
    if (![self.delegate conformsToProtocol:@protocol(PMWebDelegate)]) {
        return;
    }
    
    if (![self.delegate respondsToSelector:@selector(gotoNewControllerWithURL:)]) {
        return;
    }
    
    //当前线程是多线程
    dispatch_async(dispatch_get_main_queue(), ^{
        [self.delegate gotoNewControllerWithURL:[NSURL URLWithString:urlStr]];
    });
}

- (NSString *)getUserNickName {
    return @"二哈";
}

@end

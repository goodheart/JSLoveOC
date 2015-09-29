//
//  PMPay.m
//  JSWebViewDemo
//
//  Created by majian on 15/9/29.
//  Copyright © 2015年 majian. All rights reserved.
//

#import "PMPay.h"

@implementation PMPay
#pragma mark - PMPayProtocol
- (void)backHome {
    NSLog(@"%@",NSStringFromSelector(_cmd));
}

- (void)scanCode {
    NSLog(@"%@",NSStringFromSelector(_cmd));
}

- (void)getLoginUserId {
    NSLog(@"%@",NSStringFromSelector(_cmd));
}

- (void)getLoginUserNickName {
    NSLog(@"%@",NSStringFromSelector(_cmd));
}

- (void)getLoginUserPic {
    NSLog(@"%@",NSStringFromSelector(_cmd));
}

- (void)isBindPhone {
    NSLog(@"%@",NSStringFromSelector(_cmd));
}

- (void)getPhoneNum {
    NSLog(@"%@",NSStringFromSelector(_cmd));
}

- (void)Share {
    NSLog(@"%@",NSStringFromSelector(_cmd));
}

- (void)PlayVideo {
    NSLog(@"%@",NSStringFromSelector(_cmd));
}

@end

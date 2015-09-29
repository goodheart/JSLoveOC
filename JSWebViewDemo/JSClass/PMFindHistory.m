//
//  PMFindHistory.m
//  JSWebViewDemo
//
//  Created by majian on 15/9/29.
//  Copyright © 2015年 majian. All rights reserved.
//

#import "PMFindHistory.h"

@implementation PMFindHistory
#pragma mark - WebViewInterfaceProtocol
- (void)backHome {
    NSLog(@"%@",NSStringFromSelector(_cmd));
}

- (void)openUserInfo {
    NSLog(@"%@",NSStringFromSelector(_cmd));
}

- (void)ShareWithParameter {
    NSLog(@"%@",NSStringFromSelector(_cmd));
}

- (void)PlayVideo {
    NSLog(@"%@",NSStringFromSelector(_cmd));
}

- (void)getLoginUser_Id {
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
@end

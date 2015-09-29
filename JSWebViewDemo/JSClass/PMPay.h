//
//  PMPay.h
//  JSWebViewDemo
//
//  Created by majian on 15/9/29.
//  Copyright © 2015年 majian. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <JavaScriptCore/JavaScriptCore.h>

@protocol PMPayProtocol <JSExport>

- (void)backHome;
- (void)scanCode;
- (void)getLoginUserId;
- (void)getLoginUserNickName;
- (void)getLoginUserPic;
- (void)isBindPhone;
- (void)getPhoneNum;
- (void)Share;
- (void)PlayVideo;

@end

@interface PMPay : NSObject<PMPayProtocol>

@end

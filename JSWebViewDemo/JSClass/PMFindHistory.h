//
//  PMFindHistory.h
//  JSWebViewDemo
//
//  Created by majian on 15/9/29.
//  Copyright © 2015年 majian. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <JavaScriptCore/JavaScriptCore.h>

@protocol WebViewInterfaceProtocol <JSExport>

- (void)backHome;
- (void)openUserInfo;
- (void)ShareWithParameter;
- (void)PlayVideo;
- (void)getLoginUser_Id;
- (void)getLoginUserNickName;
- (void)getLoginUserPic;
- (void)isBindPhone;

@end

@interface PMFindHistory : NSObject<WebViewInterfaceProtocol>

@end

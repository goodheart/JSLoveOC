//
//  PMWeb.h
//  JSWebViewDemo
//
//  Created by majian on 15/9/29.
//  Copyright © 2015年 majian. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <JavaScriptCore/JavaScriptCore.h>

@protocol PMWebDelegate <NSObject>

- (void)gotoNewControllerWithURL:(NSURL *)url;

@end

@protocol PMWebProtocol <JSExport>

- (void)gotoDetail:(NSString *)urlStr;

@end

@interface PMWeb : NSObject<PMWebProtocol>

@property (nonatomic,weak) id<PMWebDelegate> delegate;

@end

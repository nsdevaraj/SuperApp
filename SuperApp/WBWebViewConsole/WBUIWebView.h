//
//  WBUIWebView.h
//  WBWebViewConsole
//
//  Created by LiXiangCheng on 9/2/24.
//  Copyright © 2024 Devaraj. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WBWebView.h"

#define WBUIWebViewUsesPrivateAPI 0//warning Private API here, DO NOT use in production code

@interface WBUIWebView : UIWebView <WBWebView>

@property (nonatomic, weak) id<UIWebViewDelegate> wb_delegate;

@end

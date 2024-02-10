//
//  WBWebViewController.m
//  WBWebViewConsole
//
//  Created by LiXiangCheng on 9/2/24.
//  Copyright © 2024 Devaraj. All rights reserved.
//

#import "WBWebViewController.h"
#import "WBUIWebView.h"

@interface WBWebViewController () <UIWebViewDelegate>

@property (nonatomic, strong) WBUIWebView * webView; 

@end

@implementation WBWebViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
      
    self.webView = [[WBUIWebView alloc] initWithFrame:self.view.bounds];
    self.webView.JSBridge.interfaceName = @"UIWebViewBridge";
    self.webView.JSBridge.readyEventName = @"UIWebViewBridgeReady";
    self.webView.JSBridge.invokeScheme = @"uiwebview-bridge://invoke";
    self.webView.wb_delegate = self;
    if(self.urlString.length == 0){
        self.urlString = @"https://www.github.com";
    }
     

    [self.view addSubview:self.webView];
    
    [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:self.urlString]]];
     
}
 
  
@end

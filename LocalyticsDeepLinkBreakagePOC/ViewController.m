//
//  ViewController.m
//  LocalyticsDeepLinkBreakagePOC
//
//  Created by Jonathan Winger-lang on 10/08/2016.
//  Copyright © 2016 Jonathan Winger-lang. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIWebView *v = [[UIWebView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    [v loadHTMLString:@"<a href='breakdeeplink://page/'>click me for deeplink action</a>" baseURL:nil];
    [self.view addSubview:v];
}

@end

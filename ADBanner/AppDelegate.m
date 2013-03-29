//
//  AppDelegate.m
//  ADBanner
//
//  Created by 廣川政樹 on 2013/03/25.
//  Copyright (c) 2013年 Dolice. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
}

- (void)applicationWillTerminate:(UIApplication *)application
{
}

- (void)initBanner:(UIView *)view :(ADBannerView *)adBannerView :(NSInteger)bannerY
{
  NSInteger iADBannerX = 0;
  NSInteger iADBannerY = 0;
  NSInteger iADBannerWidth = 320;
  NSInteger iADBannerHeight = 50;
  adBannerView = [[ADBannerView alloc] initWithFrame:CGRectMake(iADBannerX, iADBannerY, iADBannerWidth, iADBannerHeight)];
  adBannerView.delegate = self;
  [adBannerView setHidden:YES];
  CGRect bannerFrame = adBannerView.frame;
  bannerFrame.origin.y = bannerY;
  adBannerView.frame = bannerFrame;
  [view addSubview:adBannerView];
}

- (void)bannerViewDidLoadAd:(ADBannerView *)banner
{
  [banner setHidden:NO];
}

- (void)bannerViewActionDidFinish:(ADBannerView *)banner {
}

- (void)bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:(NSError *)error
{
  [banner setHidden:YES];
}

@end

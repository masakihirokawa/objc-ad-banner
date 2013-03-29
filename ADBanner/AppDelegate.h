//
//  AppDelegate.h
//  ADBanner
//
//  Created by Dolice on 2013/03/25.
//  Copyright (c) 2013 Masaki Hirokawa. All rights reserved.
//

#import <iAd/iAd.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate, ADBannerViewDelegate>

@property (strong, nonatomic) UIWindow *window;

- (void)initBanner:(UIView *)view :(ADBannerView *)adBannerView :(NSInteger)bannerY;

@end

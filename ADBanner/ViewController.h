//
//  ViewController.h
//  ADBanner
//
//  Created by Dolice on 2013/03/25.
//  Copyright (c) 2013 Masaki Hirokawa. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <iAd/iAd.h>

@interface ViewController : UIViewController <ADBannerViewDelegate> {
  ADBannerView *adBannerView;
}

@property (nonatomic, retain) IBOutlet ADBannerView *adBannerView;

@end

//
//  ViewController.m
//  ADBanner
//
//  Created by Dolice on 2013/03/25.
//  Copyright (c) 2013 Masaki Hirokawa. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize adBannerView;

- (void)viewDidLoad
{
  [super viewDidLoad];
  //初期化
  [self initADBanner];
}

- (void)initADBanner
{
  //バナーの Y座標を画面下部に指定
  NSInteger bannerY = self.view.frame.size.height - adBannerView.frame.size.height;
  //AppDelegate初期化
  AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
  //AppDelegateにある initBannerメソッド呼び出し (引数にバナーの Y座標を指定)
  [appDelegate initBanner:self.view:adBannerView:bannerY];
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
}

@end

//
//  AdViewController.h
//  Pitagorin
//
//  Created by Lorenzo Villarroel Pérez on 04/04/14.
//  Copyright (c) 2014 Lorenzov. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <RevMobAds/RevMobAds.h>


@interface AdViewController : UIViewController <RevMobAdsDelegate>

@property(strong, nonatomic) UIViewController * mainViewController;
@property(strong, nonatomic) RevMobBanner * banner;

- (id)initWithMainViewController: (UIViewController *) mainViewController;


@end

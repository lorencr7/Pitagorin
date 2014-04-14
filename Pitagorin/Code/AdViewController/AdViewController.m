//
//  AdViewController.m
//  Pitagorin
//
//  Created by Lorenzo Villarroel Pérez on 04/04/14.
//  Copyright (c) 2014 Lorenzov. All rights reserved.
//

#import "AdViewController.h"

@interface AdViewController ()

@end

@implementation AdViewController

- (id)initWithMainViewController: (UIViewController *) mainViewController {
    self = [super init];
    if (self) {
        self.mainViewController = mainViewController;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self configureFrame];
    self.edgesForExtendedLayout = UIRectEdgeNone;
    //NSLog(@"%.2f,%.2f,%.2f,%.2f",self.view.frame.origin.x,self.view.frame.origin.y,self.view.frame.size.width,self.view.frame.size.height);
    [self.view addSubview:self.mainViewController.view];
    [self addChildViewController:self.mainViewController];
    
    //[[RevMobAds session] showBanner];
    self.banner = [[RevMobAds session] banner];
    self.banner.delegate = self;
    [self.banner loadAd];
}

-(void) configureFrame {
    CGRect frame = self.view.frame;
    frame.size.height -= 20;
    self.view.frame = frame;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)revmobAdDidFailWithError:(NSError *)error {
    NSLog(@"Ad failed with error: %@", error);
}

- (void)revmobAdDidReceive {
    NSLog(@"Ad loaded successfullly");
    [self.banner showAd];
}

- (void)revmobAdDisplayed {
    CGRect frame = self.mainViewController.view.frame;
    frame.size.height -= 70;
    self.mainViewController.view.frame = frame;
    NSLog(@"Ad displayed");
}

- (void)revmobUserClickedInTheAd {
    NSLog(@"User clicked in the ad");
}

- (void)revmobUserClosedTheAd {
    NSLog(@"User closed the ad");
}

@end

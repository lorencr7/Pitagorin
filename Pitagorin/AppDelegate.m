//
//  AppDelegate.m
//  Pitagorin
//
//  Created by Lorenzo Villarroel Pérez on 04/04/14.
//  Copyright (c) 2014 Lorenzov. All rights reserved.
//

#import "AppDelegate.h"
#import "ContainerMainWindowViewController.h"
#import "AdViewController.h"
#import <RevMobAds/RevMobAds.h>

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [RevMobAds startSessionWithAppID:@"534bccd04585241703ccca68"];
    [RevMobAds session].testingMode = RevMobAdsTestingModeWithAds;
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    [self setAppAppearance];
    
    ContainerMainWindowViewController * mainViewController = [[ContainerMainWindowViewController alloc] init];
    UINavigationController * navigationViewController = [[UINavigationController alloc] initWithRootViewController:mainViewController];
    self.adViewController = [[AdViewController alloc] initWithMainViewController:navigationViewController];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    self.window.rootViewController = self.adViewController;
    [self.window makeKeyAndVisible];
    
    
    
    return YES;
}

-(void) setAppAppearance {
    NSMutableDictionary * mutableDictionaryNavigation = [[NSMutableDictionary alloc] init];
    [mutableDictionaryNavigation setObject:[UIColor blackColor] forKey:NSForegroundColorAttributeName];
    [mutableDictionaryNavigation setObject:[UIFont fontWithName:@"HelveticaNeue" size:19] forKey:NSFontAttributeName];
    [[UINavigationBar appearance] setTitleTextAttributes:mutableDictionaryNavigation];
    [[UINavigationBar appearance] setTintColor:[UIColor blackColor]];
    [[UINavigationBar appearance] setBarTintColor:[UIColor whiteColor]];
    //[[UINavigationBar appearance] setBackgroundImage:NAVIGATIONBARIMAGE forBarMetrics:UIBarMetricsDefault];
    //[[UINavigationBar appearance] setShadowImage:[[UIImage alloc] init]];
    
    [[UIToolbar appearance] setBarTintColor:[UIColor whiteColor]];
    [[UIToolbar appearance] setTintColor:[UIColor blackColor]];
    
    NSMutableDictionary * mutableDictionaryNormal = [[NSMutableDictionary alloc] init];
    [mutableDictionaryNormal setObject:[UIColor grayColor] forKey:NSForegroundColorAttributeName];
    [mutableDictionaryNormal setObject:[UIFont fontWithName:@"HelveticaNeue-Light" size:10] forKey:NSFontAttributeName];
    NSMutableDictionary * mutableDictionaryPressed = [[NSMutableDictionary alloc] init];
    [mutableDictionaryPressed setObject:[UIColor blackColor] forKey:NSForegroundColorAttributeName];
    [mutableDictionaryPressed setObject:[UIFont fontWithName:@"HelveticaNeue-Light" size:10] forKey:NSFontAttributeName];
    [[UITabBarItem appearance] setTitleTextAttributes:mutableDictionaryNormal forState:UIControlStateNormal];
    [[UITabBarItem appearance] setTitleTextAttributes:mutableDictionaryPressed forState:UIControlStateSelected];
    
    
    [[UITabBar appearance] setTintColor:[UIColor whiteColor]];
    [[UITabBar appearance] setBarTintColor:[UIColor whiteColor]];
    [[UITabBar appearance] setShadowImage:[[UIImage alloc] init]];
    //[[UITabBar appearance] setBackgroundImage:TABBARIMAGE];
    
    [[UIButton appearance] setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
    NSMutableDictionary * mutableDictionarySegmentedNormal = [[NSMutableDictionary alloc] init];
    [mutableDictionarySegmentedNormal setObject:[UIColor blackColor] forKey:NSForegroundColorAttributeName];
    [mutableDictionarySegmentedNormal setObject:[UIFont fontWithName:@"HelveticaNeue" size:14] forKey:NSFontAttributeName];
    NSMutableDictionary * mutableDictionarySegmentedPressed = [[NSMutableDictionary alloc] init];
    [mutableDictionarySegmentedPressed setObject:[UIColor blackColor] forKey:NSForegroundColorAttributeName];
    [mutableDictionarySegmentedPressed setObject:[UIFont fontWithName:@"HelveticaNeue" size:14] forKey:NSFontAttributeName];
    [[UISegmentedControl appearance]setTitleTextAttributes:mutableDictionarySegmentedNormal forState:UIControlStateNormal];
    [[UISegmentedControl appearance] setTitleTextAttributes:  mutableDictionarySegmentedPressed forState:UIControlStateSelected];
    [[UISegmentedControl appearance] setTintColor:[UIColor whiteColor]];
    
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end

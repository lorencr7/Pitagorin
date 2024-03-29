//
//  ContainerMainWindowViewController.m
//  Pitagorin
//
//  Created by Lorenzo Villarroel Pérez on 04/04/14.
//  Copyright (c) 2014 Lorenzov. All rights reserved.
//

#import "ContainerMainWindowViewController.h"
#import "SumaViewController.h"
#import "MainMenuViewController.h"

@interface ContainerMainWindowViewController ()

@end

@implementation ContainerMainWindowViewController

- (id)init {
    self = [super init];
    if (self) {
        self.title = NSLocalizedString(@"Pitagorin", nil);
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setBackgroundColor];
    [self createViewControllers];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) createViewControllers {
    CGRect frame = CGRectMake(0,
                              0,
                              self.view.frame.size.width,
                              self.view.frame.size.height);
    //SumaViewController * sumaViewController = [[SumaViewController alloc] initWithFrame:frame];
    MainMenuViewController * mainMenuViewController = [[MainMenuViewController alloc] initWithFrame:frame];

    [self.view addSubview:mainMenuViewController.view];
    [self addChildViewController:mainMenuViewController];
}

@end

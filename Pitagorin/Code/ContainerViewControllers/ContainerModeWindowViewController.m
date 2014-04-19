//
//  ContainerModeWindowViewController.m
//  Pitagorin
//
//  Created by Lorenzo Villarroel Pérez on 17/04/14.
//  Copyright (c) 2014 Lorenzov. All rights reserved.
//

#import "ContainerModeWindowViewController.h"
#import "ModeWindowViewController.h"

@interface ContainerModeWindowViewController ()

@end

@implementation ContainerModeWindowViewController

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.title = NSLocalizedString(@"Mode Selection", nil);
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
    ModeWindowViewController * modeWindowViewController = [[ModeWindowViewController alloc] initWithFrame:frame];
    
    [self.view addSubview:modeWindowViewController.view];
    [self addChildViewController:modeWindowViewController];
}

@end

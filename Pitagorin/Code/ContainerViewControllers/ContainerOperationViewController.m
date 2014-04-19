//
//  ContainerOperationViewController.m
//  Pitagorin
//
//  Created by Lorenzo Villarroel Pérez on 19/04/14.
//  Copyright (c) 2014 Lorenzov. All rights reserved.
//

#import "ContainerOperationViewController.h"
#import "OperationFactory.h"
#import "OperationViewController.h"

@interface ContainerOperationViewController ()

@end

@implementation ContainerOperationViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setBackgroundColor];
    [self createViewControllers];
    // Do any additional setup after loading the view.
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
    OperationViewController * operationViewController = [[OperationFactory getInstance] getOperationViewController];
    operationViewController.view.frame = frame;
    [self.view addSubview:operationViewController.view];
    [self addChildViewController:operationViewController];
}

@end

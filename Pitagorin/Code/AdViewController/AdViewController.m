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
    /*UILabel * label = [[UILabel alloc] initWithFrame:CGRectMake(300, 0, 200, 50)];
    label.text = @"adios";
    [self.view addSubview:label];*/
    self.edgesForExtendedLayout = UIRectEdgeNone;
    //NSLog(@"%.2f,%.2f,%.2f,%.2f",self.view.frame.origin.x,self.view.frame.origin.y,self.view.frame.size.width,self.view.frame.size.height);
    [self.view addSubview:self.mainViewController.view];
    [self addChildViewController:self.mainViewController];
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

@end

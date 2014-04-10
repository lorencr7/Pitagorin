//
//  SumaViewController.m
//  Pitagorin
//
//  Created by Lorenzo Villarroel Pérez on 04/04/14.
//  Copyright (c) 2014 Lorenzov. All rights reserved.
//

#import "SumaViewController.h"
#import "CountdownViewController.h"

@interface SumaViewController ()

@end

@implementation SumaViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    //sleep(2);
    //[self startTimer];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) createData {
    [super createData];
    [self.countdownViewController startTimer];
    [self stopActivityIndicator];

}

@end

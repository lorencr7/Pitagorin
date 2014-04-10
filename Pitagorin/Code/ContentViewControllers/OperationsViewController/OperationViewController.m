//
//  OperationViewController.m
//  Pitagorin
//
//  Created by Lorenzo Villarroel Pérez on 04/04/14.
//  Copyright (c) 2014 Lorenzov. All rights reserved.
//

#import "OperationViewController.h"
#import "CountdownViewController.h"

@interface OperationViewController ()

@end

@implementation OperationViewController

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) createData {
    [self createCountdown];
}

-(void) createCountdown {
    CGRect frame = CGRectMake(0,
                              0,
                              100,
                              30);
    self.countdownViewController = [[CountdownViewController alloc] initWithFrame:frame];
    [self addChildViewController:self.countdownViewController];
    [self.view addSubview:self.countdownViewController.view];
    
    
}


@end

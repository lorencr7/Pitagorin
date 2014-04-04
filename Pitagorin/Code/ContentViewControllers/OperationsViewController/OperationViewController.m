//
//  OperationViewController.m
//  Pitagorin
//
//  Created by Lorenzo Villarroel Pérez on 04/04/14.
//  Copyright (c) 2014 Lorenzov. All rights reserved.
//

#import "OperationViewController.h"

@interface OperationViewController ()

@end

@implementation OperationViewController

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.timeLeft = 30;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setUpTimer];
	// Do any additional setup after loading the view.
}

-(void) setUpTimer {
    self.countDownLabel =[[UILabel alloc] initWithFrame:CGRectMake(80, 0, 100, 50)];
    self.countDownLabel.textColor = [UIColor redColor];
    self.countDownLabel.text = [NSString stringWithFormat:@"%d",self.timeLeft];
    self.countDownLabel.backgroundColor=[UIColor greenColor];
    [self.view addSubview:self.countDownLabel];
    
    self.timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(timerFired) userInfo:nil repeats:YES];
}

-(void) startTimer {
    [self.timer fire];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)timerFired {
    if (self.timeLeft <= 0) {
        [self.timer invalidate];
    } else {
        self.timeLeft--;
        self.countDownLabel.text = [NSString stringWithFormat:@"%d",self.timeLeft];
    }
    
}

@end

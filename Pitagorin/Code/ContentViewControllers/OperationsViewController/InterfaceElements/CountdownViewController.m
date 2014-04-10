//
//  CountdownViewController.m
//  Pitagorin
//
//  Created by Lorenzo Villarroel Pérez on 10/04/14.
//  Copyright (c) 2014 Lorenzov. All rights reserved.
//

#import "CountdownViewController.h"

@interface CountdownViewController ()

@end

@implementation CountdownViewController

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.timeLeft = 30;
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
    [self stopActivityIndicator];
    [self setUpTimer];
}

-(void) setUpTimer {
    self.countDownLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    self.countDownLabel.textColor = [UIColor redColor];
    self.countDownLabel.text = [NSString stringWithFormat:@"%d",self.timeLeft];
    self.countDownLabel.backgroundColor = [UIColor greenColor];
    [self.view addSubview:self.countDownLabel];
    
    self.timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(timerFired) userInfo:nil repeats:YES];
}

-(void) startTimer {
    [self.timer fire];
}

-(void)timerFired {
    if (self.timeLeft <= 0) {
        [self.timer invalidate];
        if ([self.delegate respondsToSelector:@selector(timerReachedEnd)]) {
            [self.delegate timerReachedEnd];
        }
    } else {
        self.timeLeft--;
        self.countDownLabel.text = [NSString stringWithFormat:@"%d",self.timeLeft];
    }
}

@end

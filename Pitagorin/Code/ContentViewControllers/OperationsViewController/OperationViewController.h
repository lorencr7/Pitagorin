//
//  OperationViewController.h
//  Pitagorin
//
//  Created by Lorenzo Villarroel Pérez on 04/04/14.
//  Copyright (c) 2014 Lorenzov. All rights reserved.
//

#import "LoadableViewController.h"

@interface OperationViewController : LoadableViewController

@property(strong, nonatomic) UILabel * countDownLabel;
@property(strong, nonatomic) NSTimer * timer;
@property(assign, nonatomic) int timeLeft;

-(void) startTimer;

@end

//
//  CountdownViewController.h
//  Pitagorin
//
//  Created by Lorenzo Villarroel Pérez on 10/04/14.
//  Copyright (c) 2014 Lorenzov. All rights reserved.
//

#import "LoadableViewController.h"

@protocol CountdownDelegate <NSObject>
@optional
-(void) timerReachedEnd;
@end

@interface CountdownViewController : LoadableViewController

@property(weak, nonatomic) id delegate;
@property(strong, nonatomic) UILabel * countDownLabel;
@property(strong, nonatomic) NSTimer * timer;
@property(assign, nonatomic) int timeLeft;

-(void) startTimer;

@end

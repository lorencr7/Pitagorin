//
//  OperationViewController.h
//  Pitagorin
//
//  Created by Lorenzo Villarroel Pérez on 04/04/14.
//  Copyright (c) 2014 Lorenzov. All rights reserved.
//

#import "LoadableViewController.h"

@class CountdownViewController,State;
@interface OperationViewController : LoadableViewController

@property(strong, nonatomic) CountdownViewController * countdownViewController;
@property(strong, nonatomic) State * state;

@end

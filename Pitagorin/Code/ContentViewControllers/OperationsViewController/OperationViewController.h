//
//  OperationViewController.h
//  Pitagorin
//
//  Created by Lorenzo Villarroel Pérez on 04/04/14.
//  Copyright (c) 2014 Lorenzov. All rights reserved.
//

#import "LoadableViewController.h"

@class CountdownViewController;
@interface OperationViewController : LoadableViewController

@property(strong, nonatomic) CountdownViewController * countdownViewController;

@end

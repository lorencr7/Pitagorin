//
//  ContainerModeWindowViewController.h
//  Pitagorin
//
//  Created by Lorenzo Villarroel Pérez on 17/04/14.
//  Copyright (c) 2014 Lorenzov. All rights reserved.
//

#import "RootViewController.h"

@class OperationViewController;
@interface ContainerModeWindowViewController : RootViewController

@property(assign,nonatomic) OperationTypes operationType;

- (instancetype)initWithOperationType: (OperationTypes) operationType;

@end

//
//  OperationFactory.m
//  Pitagorin
//
//  Created by Lorenzo Villarroel Pérez on 19/04/14.
//  Copyright (c) 2014 Lorenzov. All rights reserved.
//

#import "OperationFactory.h"
#import "OperationViewControllers.h"
#import "States.h"


static OperationFactory * instance;

@implementation OperationFactory

+ (instancetype) getInstance {
    if (instance == nil) {
        instance = [[OperationFactory alloc] init];
    }
    return instance;
}

-(OperationViewController *) getOperationViewController {
    State * state = [self getState];
    OperationViewController * operationViewController = [self getOperation];
    operationViewController.state = state;
    return operationViewController;
}

-(State *) getState {
    GameState * gameState = [GameState getInstance];
    State * state;
    switch (gameState.gameMode) {
        case Survival:
            state = [[SurvivalState alloc] init];
            NSLog(@"Survival");
            break;
        case Practice:
            state = [[PracticeState alloc] init];
            NSLog(@"Practice");
            break;
        case CountDown:
            state = [[CountdownState alloc] init];
            NSLog(@"CountDown");
            break;
        default:
            break;
    }
    return state;
}

-(OperationViewController *) getOperation {
    GameState * gameState = [GameState getInstance];

    OperationViewController * operationViewController;
    switch (gameState.operationType) {
        case Addition:
            operationViewController = [[SumaViewController alloc] init];
            NSLog(@"Addition");
            break;
        case Substraction:
            NSLog(@"Substraction");
            break;
        default:
            break;
    }
    
    return operationViewController;
}

@end

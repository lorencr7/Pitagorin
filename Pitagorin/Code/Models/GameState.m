//
//  GameState.m
//  Pitagorin
//
//  Created by Lorenzo Villarroel Pérez on 19/04/14.
//  Copyright (c) 2014 Lorenzov. All rights reserved.
//

#import "GameState.h"
#import "Constants.h"

static GameState * instance;


@implementation GameState

+ (instancetype) getInstance {
    if (instance == nil) {
        instance = [[GameState alloc] init];
    }
    return instance;
}


@end

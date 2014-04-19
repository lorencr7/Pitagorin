//
//  CustomCellModeSurvival.m
//  Pitagorin
//
//  Created by Lorenzo Villarroel Pérez on 18/04/14.
//  Copyright (c) 2014 Lorenzov. All rights reserved.
//

#import "CustomCellModeSurvival.h"

@implementation CustomCellModeSurvival

-(void) executeAction:(UIViewController *)viewController {
    [GameState getInstance].gameMode = Survival;
    [super executeAction:viewController];
}


@end

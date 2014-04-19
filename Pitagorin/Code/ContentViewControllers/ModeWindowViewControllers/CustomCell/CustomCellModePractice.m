//
//  CustomCellModePractice.m
//  Pitagorin
//
//  Created by Lorenzo Villarroel Pérez on 18/04/14.
//  Copyright (c) 2014 Lorenzov. All rights reserved.
//

#import "CustomCellModePractice.h"

@implementation CustomCellModePractice

-(void) executeAction:(UIViewController *)viewController {
    [GameState getInstance].gameMode = Practice;
    [super executeAction:viewController];
}

@end

//
//  CustomCellMode.m
//  Pitagorin
//
//  Created by Lorenzo Villarroel Pérez on 18/04/14.
//  Copyright (c) 2014 Lorenzov. All rights reserved.
//

#import "CustomCellMode.h"
#import "ContainerOperationViewController.h"

@implementation CustomCellMode

-(void) executeAction:(UIViewController *)viewController {
    ContainerOperationViewController * containerOperationViewController = [[ContainerOperationViewController alloc] init];
    [viewController.navigationController pushViewController:containerOperationViewController animated:YES];
}

@end

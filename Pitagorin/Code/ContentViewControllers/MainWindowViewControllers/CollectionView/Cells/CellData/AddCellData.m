//
//  AddCellData.m
//  Pitagorin
//
//  Created by Lorenzo Villarroel Pérez on 14/04/14.
//  Copyright (c) 2014 Lorenzov. All rights reserved.
//

#import "AddCellData.h"
#import "SumaViewController.h"
#import "ContainerModeWindowViewController.h"

@implementation AddCellData

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.image = @"addition.png";
        self.text = NSLocalizedString(@"Addition", nil);
    }
    return self;
}

-(void) executeAction:(UIViewController *)viewController {
    ContainerModeWindowViewController * containerModeWindowViewController = [[ContainerModeWindowViewController alloc] initWithOperationType:Addition];
    [viewController.navigationController pushViewController:containerModeWindowViewController animated:YES];
}

@end

//
//  CustomCellMode.m
//  Pitagorin
//
//  Created by Lorenzo Villarroel Pérez on 18/04/14.
//  Copyright (c) 2014 Lorenzov. All rights reserved.
//

#import "CustomCellMode.h"

@implementation CustomCellMode

- (instancetype)initWithOperationType: (OperationTypes) operationType {
    self = [super init];
    if (self) {
        self.operationType = operationType;
    }
    return self;
}

@end

//
//  Operand.m
//  Pitagorin
//
//  Created by Lorenzo Villarroel Pérez on 19/04/14.
//  Copyright (c) 2014 Lorenzov. All rights reserved.
//

#import "Operand.h"

@implementation Operand

- (instancetype)initWithValue: (NSString *) value IsVariable: (BOOL) isVariable {
    self = [super init];
    if (self) {
        self.value = value;
        self.isVariable = isVariable;
    }
    return self;
}

@end

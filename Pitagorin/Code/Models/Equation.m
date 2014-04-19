//
//  Equation.m
//  Pitagorin
//
//  Created by Lorenzo Villarroel Pérez on 19/04/14.
//  Copyright (c) 2014 Lorenzov. All rights reserved.
//

#import "Equation.h"
#import "Operand.h"

@implementation Equation

- (instancetype)initWithNumberOfOperands: (int) numberOfOperands maxNumber: (int) maxNumber {
    self = [super init];
    if (self) {
        self.numberOfOperands = numberOfOperands;
        self.maxNumber = maxNumber;
        [self createEquation];
    }
    return self;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.numberOfOperands = 2;
        self.maxNumber = 10;
        [self createEquation];
    }
    return self;
}

-(void) createEquation {
    self.operands = [NSMutableArray array];
    for (int i = 0; i < self.numberOfOperands; i++) {
        int newValue = arc4random() % self.maxNumber;
        NSString * value = [NSString stringWithFormat:@"%d",newValue];
        Operand * newOperand = [[Operand alloc] initWithValue:value IsVariable:NO];
        [self.operands addObject:newOperand];
    }
}

@end

//
//  Equation.h
//  Pitagorin
//
//  Created by Lorenzo Villarroel Pérez on 19/04/14.
//  Copyright (c) 2014 Lorenzov. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Operand;
@interface Equation : NSObject

@property(assign, nonatomic) int maxNumber;
@property(assign, nonatomic) int numberOfOperands;
@property(strong, nonatomic) NSMutableArray * operands;
@property(strong, nonatomic) Operand * result;

- (instancetype)initWithNumberOfOperands: (int) numberOfOperands maxNumber: (int) maxNumber;

@end

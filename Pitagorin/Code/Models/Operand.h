//
//  Operand.h
//  Pitagorin
//
//  Created by Lorenzo Villarroel Pérez on 19/04/14.
//  Copyright (c) 2014 Lorenzov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Operand : NSObject

@property(assign, nonatomic) BOOL isVariable;
@property(strong, nonatomic) NSString * value;

- (instancetype)initWithValue: (NSString *) value IsVariable: (BOOL) isVariable;

@end

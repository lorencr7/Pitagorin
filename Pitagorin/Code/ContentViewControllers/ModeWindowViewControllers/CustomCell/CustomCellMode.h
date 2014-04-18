//
//  CustomCellMode.h
//  Pitagorin
//
//  Created by Lorenzo Villarroel Pérez on 18/04/14.
//  Copyright (c) 2014 Lorenzov. All rights reserved.
//

#import "CustomCell.h"

@interface CustomCellMode : CustomCell

@property(assign,nonatomic) OperationTypes operationType;

- (instancetype)initWithOperationType: (OperationTypes) operationType;

@end

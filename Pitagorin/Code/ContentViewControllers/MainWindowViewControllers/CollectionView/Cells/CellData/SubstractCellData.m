//
//  SubstractCellData.m
//  Pitagorin
//
//  Created by Lorenzo Villarroel Pérez on 14/04/14.
//  Copyright (c) 2014 Lorenzov. All rights reserved.
//

#import "SubstractCellData.h"

@implementation SubstractCellData

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.image = @"substraction.png";
        self.text = NSLocalizedString(@"Substraction", nil);
    }
    return self;
}


@end

//
//  OperationFactory.h
//  Pitagorin
//
//  Created by Lorenzo Villarroel Pérez on 19/04/14.
//  Copyright (c) 2014 Lorenzov. All rights reserved.
//

#import <Foundation/Foundation.h>

@class OperationViewController;
@interface OperationFactory : NSObject

+ (instancetype) getInstance;
-(OperationViewController *) getOperationViewController;

@end

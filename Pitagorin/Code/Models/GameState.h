//
//  GameState.h
//  Pitagorin
//
//  Created by Lorenzo Villarroel Pérez on 19/04/14.
//  Copyright (c) 2014 Lorenzov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GameState : NSObject

@property(assign,nonatomic) OperationTypes operationType;
@property(assign,nonatomic) GameModes gameMode;

+ (instancetype) getInstance;


@end

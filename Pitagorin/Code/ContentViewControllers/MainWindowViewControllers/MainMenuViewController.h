//
//  MainMenuViewController.h
//  Pitagorin
//
//  Created by Lorenzo Villarroel Pérez on 13/04/14.
//  Copyright (c) 2014 Lorenzov. All rights reserved.
//

#import "LoadableViewController.h"

@interface MainMenuViewController : LoadableViewController <UICollectionViewDelegate, UICollectionViewDataSource>

@property(strong,nonatomic) UICollectionViewController * collectionViewController;
@property(strong,nonatomic) UICollectionView * collectionView;
@property(strong,nonatomic) NSMutableArray * elements;

@end

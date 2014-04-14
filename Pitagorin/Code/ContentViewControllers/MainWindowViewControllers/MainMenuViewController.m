//
//  MainMenuViewController.m
//  Pitagorin
//
//  Created by Lorenzo Villarroel Pérez on 13/04/14.
//  Copyright (c) 2014 Lorenzov. All rights reserved.
//

#import "MainMenuViewController.h"
#import "CollectionViewFlowLayout.h"
#import "Cell.h"
#import "CellData.h"
#import "AddCellData.h"
#import "SubstractCellData.h"

@interface MainMenuViewController ()

@end

@implementation MainMenuViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL) getData {
    return YES;
}

-(void) createData {
    [self initElements];
    [self initCollectionView];
    [self stopActivityIndicator];
}

-(void) initElements {
    self.elements = [NSMutableArray array];
    
    [self.elements addObject:[[AddCellData alloc] init]];
    [self.elements addObject:[[SubstractCellData alloc] init]];
    [self.elements addObject:[[AddCellData alloc] init]];
    [self.elements addObject:[[AddCellData alloc] init]];
    [self.elements addObject:[[AddCellData alloc] init]];
    [self.elements addObject:[[AddCellData alloc] init]];
    [self.elements addObject:[[AddCellData alloc] init]];
    [self.elements addObject:[[AddCellData alloc] init]];
    [self.elements addObject:[[AddCellData alloc] init]];
    [self.elements addObject:[[AddCellData alloc] init]];
    [self.elements addObject:[[AddCellData alloc] init]];
    [self.elements addObject:[[AddCellData alloc] init]];
    [self.elements addObject:[[AddCellData alloc] init]];
    [self.elements addObject:[[AddCellData alloc] init]];
    [self.elements addObject:[[AddCellData alloc] init]];
    [self.elements addObject:[[AddCellData alloc] init]];
    [self.elements addObject:[[AddCellData alloc] init]];
    [self.elements addObject:[[AddCellData alloc] init]];
    [self.elements addObject:[[AddCellData alloc] init]];
}

-(void) initCollectionView {
    CollectionViewFlowLayout * collectionViewFlowLayout = [[CollectionViewFlowLayout alloc] init];
    
    CGRect collectionViewFrame = CGRectMake(0,
                                            0,
                                            self.view.frame.size.width,
                                            self.view.frame.size.height);
    self.collectionViewController = [[UICollectionViewController alloc] initWithCollectionViewLayout:collectionViewFlowLayout];
    self.collectionViewController.view.frame = collectionViewFrame;
    
    self.collectionView = [[UICollectionView alloc] initWithFrame:collectionViewFrame collectionViewLayout:collectionViewFlowLayout];
    self.collectionView.backgroundColor = [UIColor clearColor];
    [self.collectionView setDataSource:self];
    [self.collectionView setDelegate:self];
    [self.collectionView registerClass:[Cell class] forCellWithReuseIdentifier:@"MY_CELL"];
    self.collectionView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
    self.collectionView.alwaysBounceVertical = YES;
    
    //[self iniciarRefreshControl];
    
    self.collectionViewController.collectionView = self.collectionView;
    [self.view addSubview:self.collectionViewController.view];
}


-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)view numberOfItemsInSection:(NSInteger)section {
    return self.elements.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)cv cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    Cell * cell = [cv dequeueReusableCellWithReuseIdentifier:@"MY_CELL" forIndexPath:indexPath];
    CellData * cellData = [self.elements objectAtIndex:indexPath.row];
    cell.image.image = [UIImage imageNamed:cellData.image];
    cell.label.text = cellData.text;
    /*NSString * imageURL = [NSString stringWithFormat:@"%@%@",BASESTRING,cellData.person.avatar256];//256 because of retina
    NSMutableDictionary * arguments = [[NSMutableDictionary alloc] init];
    [arguments setObject:cell.imagen forKey:@"imageView"];
    [arguments setObject:imageURL forKey:@"url"];
    [arguments setObject:@95 forKey:@"maxHeight"];
    [arguments setObject:@95 forKey:@"maxWidth"];
    [self performSelectorInBackground:@selector(configureImageView:) withObject:arguments];*/
    
    return cell;
}

-(void) collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    CellData * cellData = [self.elements objectAtIndex:indexPath.row];
    [cellData executeAction:self];
}

@end

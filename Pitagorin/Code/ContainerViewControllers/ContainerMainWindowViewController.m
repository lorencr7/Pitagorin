//
//  ContainerMainWindowViewController.m
//  Pitagorin
//
//  Created by Lorenzo Villarroel Pérez on 04/04/14.
//  Copyright (c) 2014 Lorenzov. All rights reserved.
//

#import "ContainerMainWindowViewController.h"
#import "SumaViewController.h"

@interface ContainerMainWindowViewController ()

@end

@implementation ContainerMainWindowViewController

- (id)init {
    self = [super init];
    if (self) {
        self.title = @"Main";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setBackgroundColor];
    //self.view.backgroundColor = [UIColor redColor];
    [self createViewControllers];
    /*NSLog(@"%.2f,%.2f,%.2f,%.2f",self.view.frame.origin.x,self.view.frame.origin.y,self.view.frame.size.width,self.view.frame.size.height);
    UILabel * label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 200, 50)];
    label.text = @"hola";
    [self.view addSubview:label];*/
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) createViewControllers {
    CGRect frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    SumaViewController * sumaViewController = [[SumaViewController alloc] initWithFrame:frame];
    
    [self.view addSubview:sumaViewController.view];
    [self addChildViewController:sumaViewController];
}

@end

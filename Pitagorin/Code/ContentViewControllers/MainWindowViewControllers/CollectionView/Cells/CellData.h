//
//  CellData.h
//  FI UPM
//
//  Created by Lorenzo Villarroel on 02/04/13.
//  Copyright (c) 2013 Laboratorio Ingeniería del Software. All rights reserved.
//

#import <Foundation/Foundation.h>
//@class Person;
@interface CellData : NSObject

//@property(strong, nonatomic) Person * person;

@property(strong, nonatomic) NSString * image;
@property(strong, nonatomic) NSString * text;

//- (id)initWithPerson: (Person *) person;


-(void) executeAction: (UIViewController *) viewController;

@end

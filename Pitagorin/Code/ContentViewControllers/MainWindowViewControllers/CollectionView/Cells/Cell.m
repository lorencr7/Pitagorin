//
//  Cell.m
//  FI UPM
//
//  Created by Lorenzo Villarroel on 02/04/13.
//  Copyright (c) 2013 Laboratorio Ingeniería del Software. All rights reserved.
//

#import "Cell.h"
#import <QuartzCore/QuartzCore.h>

@implementation Cell

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        int imageSize = frame.size.width * 0.65;
        self.image = [[UIImageView alloc] initWithFrame:CGRectMake(frame.size.width/2 - imageSize/2,
                                                                   5,
                                                                   imageSize,
                                                                   imageSize)];
        //NSLog(@"%d",imageSize);

        int originY = self.image.frame.origin.y + self.image.frame.size.height;
        self.label = [[UILabel alloc] initWithFrame:CGRectMake(0,
                                                               originY,
                                                               frame.size.width,
                                                               frame.size.height - originY)];
        self.label.textAlignment = NSTextAlignmentCenter;
        
        
        [self.contentView addSubview:self.image];
        [self.contentView addSubview:self.label];
        
        //self.contentView.backgroundColor = BACKGROUNDCOLOR;
        self.contentView.backgroundColor = [UIColor redColor];
        
        //self.contentView.layer.borderColor = [[UIColor colorWithRed:(65.0/255.0) green:(81.0/255.0) blue:(103.0/255.0) alpha:1] CGColor];
        /*self.contentView.layer.borderColor = [[UIColor whiteColor] CGColor];
        self.contentView.layer.borderWidth = 2;
        
        self.contentView.layer.cornerRadius = frame.size.width/2;
        self.contentView.layer.masksToBounds = YES;
        
        self.contentView.layer.shadowColor = [[UIColor blackColor] CGColor];
        self.contentView.layer.shadowOffset = CGSizeMake(-2,2);
        self.contentView.layer.shadowRadius = 1.75;
        self.contentView.layer.shadowOpacity = 0.27;
        
        CGRect shadowFrame = self.contentView.layer.bounds;
        CGPathRef shadowPath = [UIBezierPath bezierPathWithRect:shadowFrame].CGPath;
        self.contentView.layer.shadowPath = shadowPath;*/
    }
    return self;
}

@end

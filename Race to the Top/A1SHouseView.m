//
//  A1SHouseView.m
//  Race to the Top
//
//  Created by Albert Saucedo on 7/16/15./Users/albertsaucedo/Google Drive/School/MMA/GitHub/Race to the Top/Race to the Top/A1SHouseView.m
//  Copyright (c) 2015 Albert Saucedo. All rights reserved.
//

#import "A1SHouseView.h"

@implementation A1SHouseView

-(id)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        //initialize code
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.

- (void)drawRect:(CGRect)rect {
    
    UIBezierPath *housePath = [UIBezierPath bezierPath];
    
    housePath.lineWidth = 2.0;
    
    //Left Roof Line "/"
    [housePath moveToPoint:CGPointMake(1/2.0 * self.bounds.size.width,
                                       1/5.0 * self.bounds.size.height)];
    
    [housePath addLineToPoint:CGPointMake(3/10.0 * self.bounds.size.width,
                                          2/5.0 * self.bounds.size.height)];
    
    //Left Wall "|"
    [housePath addLineToPoint:CGPointMake(3/10.0 * self.bounds.size.width,
                                          7/10.0 * self.bounds.size.height)];
    
    //Floor "__"
    [housePath addLineToPoint:CGPointMake(7/10.0 * self.bounds.size.width,
                                          7/10.0 * self.bounds.size.height)];
    
    //Right Wall "|"
    [housePath addLineToPoint:CGPointMake(7/10.0 * self.bounds.size.width,
                                          2/5.0 * self.bounds.size.height)];
    
    [[UIColor brownColor] setFill];
    [housePath closePath];
    [housePath fill];
    [housePath stroke];
    
#pragma mark Window Path
    
    UIBezierPath *windowPath = [UIBezierPath bezierPath];
    windowPath.lineWidth = 5.0;
    
    //Left
    [windowPath moveToPoint:CGPointMake(1/2.0 * self.bounds.size.width,
                                        2/5.0 * self.bounds.size.height)];
    
    [windowPath addLineToPoint:CGPointMake(1/2.0 * self.bounds.size.width,
                                           1/2.0 * self.bounds.size.height)];
    
    //Bottom
    [windowPath addLineToPoint:CGPointMake(3/5.0 * self.bounds.size.width,
                                           1/2.0 * self.bounds.size.height)];
    
    //Right
    [windowPath addLineToPoint:CGPointMake(3/5.0 * self.bounds.size.width,
                                           2/5.0 * self.bounds.size.height)];
    
    [windowPath closePath];
    [windowPath stroke];
    
#pragma mark Door Path
    
    UIBezierPath *doorPath = [UIBezierPath bezierPath];
    doorPath.lineWidth = 2.5;
    
    //Left
    [doorPath moveToPoint:CGPointMake(2/5.0 * self.bounds.size.width,
                                      7/10.0 * self.bounds.size.height)];
    
    [doorPath addLineToPoint:CGPointMake(2/5.0 *self.bounds.size.width,
                                         5.5/10.0 * self.bounds.size.height)];
    
    //Top
    [doorPath addLineToPoint:CGPointMake(1/2.0 * self.bounds.size.width,
                                         5.5/10.0 * self.bounds.size.height)];
    
    //Right
    [doorPath addLineToPoint:CGPointMake(1/2.0 * self.bounds.size.width,
                                         7/10.0 * self.bounds.size.height)];
    
    [doorPath closePath];
    [doorPath stroke];
    
#pragma mark Chimney Path
    
    UIBezierPath *chimneyPath = [UIBezierPath bezierPath];
    chimneyPath.lineWidth = 1.0;

    /*I decided to convert the fractions into decimals for comparison */

    //Left
    [chimneyPath moveToPoint:CGPointMake(.35 * self.bounds.size.width,
                                         .35 * self.bounds.size.height)];
    [chimneyPath addLineToPoint:CGPointMake(.35 * self.bounds.size.width,
                                            .25 * self.bounds.size.height)];
    
    //Top
    [chimneyPath addLineToPoint:CGPointMake(.4 * self.bounds.size.width,
                                            .25 * self.bounds.size.height)];
    
    //Right
    [chimneyPath addLineToPoint:CGPointMake(.4 * self.bounds.size.width,
                                            .3 * self.bounds.size.height)];
    
    [[UIColor blackColor] setFill];
    [chimneyPath fill];
    [chimneyPath closePath];
    [chimneyPath stroke];
    
}


@end

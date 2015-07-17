//
//  A1SSpaceShipView.m
//  Race to the Top
//
//  Created by Albert Saucedo on 7/16/15.
//  Copyright (c) 2015 Albert Saucedo. All rights reserved.
//

#import "A1SSpaceShipView.h"

@implementation A1SSpaceShipView

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
    // Drawing code
    
    UIBezierPath *bezierPath = [UIBezierPath bezierPath];
    
    bezierPath.lineWidth = 3.0;
    
    //First vertical line "|"
    [bezierPath moveToPoint:CGPointMake(1/6.0 * self.bounds.size.width,
                                        1/3.0 * self.bounds.size.height)];
    
    [bezierPath addLineToPoint:CGPointMake(1/6.0 * self.bounds.size.width,
                                           2/3.0 * self.bounds.size.height)];
    
    //Base Horizontal Line "___"
    [bezierPath addLineToPoint:CGPointMake(5/6.0 * self.bounds.size.width,
                                           2/3.0 * self.bounds.size.height)];
    
    //Nose of Ship "\"
    [bezierPath addLineToPoint:CGPointMake(2/3.0 * self.bounds.size.width,
                                           1/2.0 * self.bounds.size.height)];
    
    //Top Horizontal Line "_"
    [bezierPath addLineToPoint:CGPointMake(1/3.0 * self.bounds.size.width,
                                           1/2.0 * self.bounds.size.height)];
    
    //Creates the auto closing gap from First VL to Top HL
    [bezierPath closePath];
    
    [bezierPath stroke];
}

@end

//
//  A1SPathView.m
//  Race to the Top
//
//  Created by Albert Saucedo on 8/2/15.
//  Copyright (c) 2015 Albert Saucedo. All rights reserved.
//

#import "A1SPathView.h"
#import "A1SMountainPath.h"

@implementation A1SPathView



// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {

    for (UIBezierPath *path in [A1SMountainPath mountainPathsForRect:self.bounds]) {
        [[UIColor blueColor] setStroke];
        [path stroke];
    }
    // Drawing code
}

@end

//
//  A1SMountainPath.h
//  Race to the Top
//
//  Created by Albert Saucedo on 7/20/15.
//  Copyright (c) 2015 Albert Saucedo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface A1SMountainPath : NSObject

+(NSArray *)mountainPathsForRect:(CGRect)rect;
+(UIBezierPath *)tapTargetForPath:(UIBezierPath *)path;

@end

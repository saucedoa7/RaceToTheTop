//
//  ViewController.m
//  Race to the Top
//
//  Created by Albert Saucedo on 7/16/15.
//  Copyright (c) 2015 Albert Saucedo. All rights reserved.
//

#import "ViewController.h"
#import "A1SPathView.h"
#import "A1SMountainPath.h"

#define A1SMAP_STARTING_SCORE 15000
#define A1SMAP_SCORE_DECREMENT 100
#define A1STIMER_INTERVAL 0.1
#define A1SWALL_PENAL 500

@interface ViewController ()
@property (strong, nonatomic) IBOutlet A1SPathView *pathView;
@property (strong, nonatomic) NSTimer *timer;
@property int i;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.timer = [NSTimer scheduledTimerWithTimeInterval:A1STIMER_INTERVAL
                                                  target:self
                                                selector:@selector(timerTripped)
                                                userInfo:nil
                                                 repeats:YES];

    self.lblScore.text = [NSString stringWithFormat:@"%i", A1SMAP_STARTING_SCORE];

    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self
                                                                          action:@selector(tapDetected:)];
    UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] initWithTarget:self
                                                                          action:@selector(panDetected:)];

    [self.pathView addGestureRecognizer:tap];
    [self.pathView addGestureRecognizer:pan];
}

-(void)timerTripped{
    [self decrementScoreByAmount:A1SMAP_SCORE_DECREMENT];

}

-(void)tapDetected:(UITapGestureRecognizer *)tap{
    CGPoint tapLocation = [tap locationInView:self.pathView];

    NSLog(@"Tap loc is at (%.2f, %.2f)", tapLocation.x, tapLocation.y);
}

-(void)panDetected:(UIPanGestureRecognizer *)pan{
    CGPoint panLocation  = [pan locationInView:self.pathView];

    for (UIBezierPath *path in [A1SMountainPath mountainPathsForRect:self.pathView.bounds]) {
        UIBezierPath *tapTarget = [A1SMountainPath tapTargetForPath:path];

        if ([tapTarget containsPoint:panLocation]) {
            [self decrementScoreByAmount:A1SWALL_PENAL];
        }
    }

    NSLog(@"Pan loc is at (%.2f, %.2f)", panLocation.x, panLocation.y);

}

-(void)decrementScoreByAmount:(int)amount{

    NSString *scoreText = [[self.lblScore.text componentsSeparatedByString:@" "] lastObject];

    int score = [scoreText intValue];
    score = score - amount;

    NSString *newScoreText = [self.lblScore.text stringByReplacingOccurrencesOfString:scoreText withString:[NSString stringWithFormat:@"%i", score]];
    self.lblScore.text = newScoreText;

    if (score < 0) {
        self.lblScore.text = @"0";
        [self.timer invalidate];
    }
}
@end

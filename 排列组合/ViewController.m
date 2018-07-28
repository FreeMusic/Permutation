//
//  ViewController.m
//  排列组合
//
//  Created by 橘子Star on 2018/7/28.
//  Copyright © 2018年 橘子Star. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"%ld", [self lotterySSQPTRecursiveWithRedBalls:23 blueBalls:3]);
}
/**
 双色球 普通选注
 */
- (long)lotterySSQPTRecursiveWithRedBalls:(NSUInteger)redBalls blueBalls:(NSUInteger)blueBalls{
    if (redBalls > 5 && blueBalls > 0) {
        if (redBalls == 6) {
            return blueBalls;
        }else{
            NSUInteger count = (redBalls-6 > 6) ? 6 : redBalls-6;
            long number = 1;
            long molecular = 1;
            long denominator = 1;
            for (int i = 0; i < count; i++) {
                molecular = molecular*(redBalls-i);
                denominator = denominator * (i+1);
                number = (molecular*number)/denominator;
                molecular = 1;
                denominator = 1;
            }
            number = number*blueBalls;
            
            return number;
        }
    }else{
        return 0;
    }
}


@end

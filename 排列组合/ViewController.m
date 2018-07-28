//
//  ViewController.m
//  排列组合
//
//  Created by 橘子Star on 2018/7/28.
//  Copyright © 2018年 橘子Star. All rights reserved.
//

#import "ViewController.h"
#import "Arithmetic.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //阶乘
    NSUInteger number = arithmetic(40);
    NSLog(@"递归计算阶乘%ld", number);
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 200, 350, 60)];
    label.text = [NSString stringWithFormat:@"%ld", number];
    [self.view addSubview:label];
    //循环
    NSLog(@"%ld", [self lotterySSQPTRecursiveWithRedBalls:33 blueBalls:3]);
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

//
//  Arithmetic.m
//  排列组合
//
//  Created by 橘子Star on 2018/7/28.
//  Copyright © 2018年 橘子Star. All rights reserved.
//

#import "Arithmetic.h"

long arithmetic(int n)
{
    if (n>1) {
        return n*arithmetic(n-1);
    }else if (n == 1){
        return 1;
    }else{
        return 1;
    }
}

@implementation Arithmetic




@end

//
//  LineChart.m
//  DesignPattern
//
//  Created by AfterJason on 2020/11/9.
//

#import "LineChart.h"

@implementation LineChart

- (instancetype)init {
    self = [super init];
    if (self) {
        NSLog(@"创建折线图");
    }
    return self;
}

/// 实现协议的展示方法
- (void)display {
    NSLog(@"展示折线图");
}

@end

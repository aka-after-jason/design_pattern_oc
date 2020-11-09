//
//  PieChart.m
//  DesignPattern
//
//  Created by AfterJason on 2020/11/9.
//

#import "PieChart.h"

@implementation PieChart

- (instancetype)init {
    self = [super init];
    if (self) {
        NSLog(@"创建饼状图");
    }
    return self;
}

/// 实现协议方法
- (void)display {
    NSLog(@"展示饼状图");
}

@end

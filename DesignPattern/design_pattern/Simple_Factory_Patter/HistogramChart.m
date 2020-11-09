//
//  HistogramChart.m
//  DesignPattern
//
//  Created by AfterJason on 2020/11/9.
//

#import "HistogramChart.h"

@implementation HistogramChart

/// 构造函数
- (instancetype)init {
    self = [super init];
    if (self) {
        NSLog(@"创建柱状图");
    }
    return self;
}

/// 实现协议的方法
- (void)display{
    NSLog(@"显示柱状图");
}


@end

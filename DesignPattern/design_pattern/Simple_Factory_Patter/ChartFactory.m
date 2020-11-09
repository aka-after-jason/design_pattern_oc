//
//  ChartFactory.m
//  DesignPattern
//
//  Created by AfterJason on 2020/11/9.
//

#import "ChartFactory.h"
#import "HistogramChart.h"
#import "Tools.h"
#import "HistogramChart.h"
#import "ChartProtocol.h"
#import "PieChart.h"
#import "LineChart.h"


@implementation ChartFactory

+ (id<ChartProtocol>)getChart:(NSString *)type {
    
    NSArray *str_type = @[@"histogram",@"pie",@"line"];
    ChartType chartType = [str_type indexOfObject:type];
    id<ChartProtocol> chart;
    switch (chartType) {
        case chartTypeHistogram: // 柱状图
            chart = [[HistogramChart alloc] init];
            NSLog(@"初始化设置柱状图");
            return chart;
            break;
        case chartTypePie:
            chart = [[PieChart alloc] init];
            NSLog(@"初始化设置饼状图");
            return chart;
            break;
        case chartTypeLine:
            chart = [[LineChart alloc] init];
            NSLog(@"初始化设置折线图");
            return chart;
            break;
    }
    return nil;
}

@end

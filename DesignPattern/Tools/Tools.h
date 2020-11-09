//
//  Tools.h
//  DesignPattern
//
//  Created by AfterJason on 2020/11/9.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

// 定义Chart枚举
typedef  NS_ENUM(NSInteger,ChartType){
    chartTypeHistogram = 0, // 柱状图
    chartTypePie, // 饼状图
    chartTypeLine // 折线图
};

@interface Tools : NSObject

@end

NS_ASSUME_NONNULL_END

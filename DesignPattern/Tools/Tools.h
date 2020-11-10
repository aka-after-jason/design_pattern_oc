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

/// 读取plist文件，获取chart_type,并返回
+ (NSString *)get_chart_type;

/// 读取plist文件，获取className,并返回一个类
+ (id)get_object;

@end

NS_ASSUME_NONNULL_END

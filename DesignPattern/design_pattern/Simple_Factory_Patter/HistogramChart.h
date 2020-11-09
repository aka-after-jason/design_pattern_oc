//
//  HistogramChart.h
//  DesignPattern
//
//  Created by AfterJason on 2020/11/9.
//

#import <Foundation/Foundation.h>
#import "ChartProtocol.h"

NS_ASSUME_NONNULL_BEGIN

/// 具体的柱状图类
@interface HistogramChart : NSObject<ChartProtocol> // 遵循协议


@end

NS_ASSUME_NONNULL_END

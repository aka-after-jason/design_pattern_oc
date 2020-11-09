//
//  ChartProtocol.h
//  DesignPattern
//
//  Created by AfterJason on 2020/11/9.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/// 定义协议
@protocol ChartProtocol <NSObject>  // 抽象产品类，相当于 java 中的接口

/// 展示方法
- (void) display;

@end

NS_ASSUME_NONNULL_END

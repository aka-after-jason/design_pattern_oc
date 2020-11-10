//
//  LoggerFactoryProtocol.h
//  DesignPattern
//
//  Created by AfterJason on 2020/11/10.
//

#import <Foundation/Foundation.h>
#import "LoggerProtocol.h"

NS_ASSUME_NONNULL_BEGIN

/// 日志记录器工厂接口：抽象工厂
@protocol LoggerFactoryProtocol <NSObject>

// 提供一个创建抽象产品的方法
- (id<LoggerProtocol>)createLogger;

@end

NS_ASSUME_NONNULL_END

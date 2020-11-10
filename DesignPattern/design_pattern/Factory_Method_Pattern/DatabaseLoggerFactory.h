//
//  DatabaseLoggerFactory.h
//  DesignPattern
//
//  Created by AfterJason on 2020/11/10.
//

#import <Foundation/Foundation.h>
#import "LoggerFactoryProtocol.h"

NS_ASSUME_NONNULL_BEGIN

/// 数据库日志记录器工厂类：具体工厂
@interface DatabaseLoggerFactory : NSObject<LoggerFactoryProtocol>

@end

NS_ASSUME_NONNULL_END

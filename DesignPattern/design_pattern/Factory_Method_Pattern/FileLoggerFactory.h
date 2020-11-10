//
//  FileLoggerFactory.h
//  DesignPattern
//
//  Created by AfterJason on 2020/11/10.
//

#import <Foundation/Foundation.h>
#import "LoggerFactoryProtocol.h"

NS_ASSUME_NONNULL_BEGIN

/// 文件日志记录器工厂类：具体工厂
@interface FileLoggerFactory : NSObject<LoggerFactoryProtocol>

@end

NS_ASSUME_NONNULL_END

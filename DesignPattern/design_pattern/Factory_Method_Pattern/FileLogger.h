//
//  FileLogger.h
//  DesignPattern
//
//  Created by AfterJason on 2020/11/10.
//

#import <Foundation/Foundation.h>
#import "LoggerProtocol.h"

NS_ASSUME_NONNULL_BEGIN

/// 文件日志记录器：具体产品
@interface FileLogger : NSObject<LoggerProtocol>

@end

NS_ASSUME_NONNULL_END

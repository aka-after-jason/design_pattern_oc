//
//  DatabaseLogger.h
//  DesignPattern
//
//  Created by AfterJason on 2020/11/10.
//

#import <Foundation/Foundation.h>
#import "LoggerProtocol.h"

NS_ASSUME_NONNULL_BEGIN

/// 数据库日志记录器：具体产品
@interface DatabaseLogger : NSObject<LoggerProtocol>



@end

NS_ASSUME_NONNULL_END

//
//  LoggerProtocol.h
//  DesignPattern
//
//  Created by AfterJason on 2020/11/10.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/// 日志记录器接口：抽象产品
@protocol LoggerProtocol <NSObject>

/// 写入log
- (void)writeLog;

@end

NS_ASSUME_NONNULL_END

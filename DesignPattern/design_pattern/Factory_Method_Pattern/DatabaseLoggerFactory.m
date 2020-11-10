//
//  DatabaseLoggerFactory.m
//  DesignPattern
//
//  Created by AfterJason on 2020/11/10.
//

#import "DatabaseLoggerFactory.h"
#import "DatabaseLogger.h"

@implementation DatabaseLoggerFactory

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"创建数据库日志记录器具体工厂");
    }
    return self;
}

/// 创建具体的数据库日志记录器
- (id<LoggerProtocol>)createLogger{
    DatabaseLogger *logger = [[DatabaseLogger alloc] init];
    return logger;
}

@end

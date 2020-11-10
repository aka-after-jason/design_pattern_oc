//
//  FileLoggerFactory.m
//  DesignPattern
//
//  Created by AfterJason on 2020/11/10.
//

#import "FileLoggerFactory.h"
#import "FileLogger.h"

@implementation FileLoggerFactory

- (instancetype)init {
    self = [super init];
    if (self) {
        NSLog(@"创建具体的文件日志记录器工厂");
    }
    return self;
}

- (id<LoggerProtocol>)createLogger {
    FileLogger *logger = [[FileLogger alloc] init];
    return logger;
}

@end

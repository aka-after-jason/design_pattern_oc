//
//  DatabaseLogger.m
//  DesignPattern
//
//  Created by AfterJason on 2020/11/10.
//

#import "DatabaseLogger.h"

@implementation DatabaseLogger

- (instancetype)init{
    self = [super init];
    if (self) {
        NSLog(@"数据库日志记录器具体工厂创建具体数据库日志记录器");
    }
    return self;
}

- (void)writeLog{
    NSLog(@"向数据库日志记录器写入日志");
}

@end

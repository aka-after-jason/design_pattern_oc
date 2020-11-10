//
//  FileLogger.m
//  DesignPattern
//
//  Created by AfterJason on 2020/11/10.
//

#import "FileLogger.h"

@implementation FileLogger

- (instancetype)init{
    self = [super init];
    if (self) {
        NSLog(@"文件日志记录器具体工厂创建具体文件日志记录器");
    }
    return self;
}

- (void)writeLog{
    NSLog(@"向文件日志记录器写入日志");
}

@end

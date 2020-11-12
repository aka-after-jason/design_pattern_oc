//
//  GCDSingleton.m
//  DesignPattern
//
//  Created by AfterJason on 2020/11/12.
//

#import "GCDSingleton.h"

@implementation GCDSingleton

static GCDSingleton *instance = nil;

+ (GCDSingleton *)getInstance {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

/// 调用父类的内存申请函数
/// @param zone <#zone description#>
+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [super allocWithZone:zone];
    });
    return instance;
}

/// 调用 copy 方法时，会调用这个方法
/// @param zone <#zone description#>
- (id) copyWithZone:(struct _NSZone *)zone {
    return instance;
}

@end

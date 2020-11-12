//
//  NormalSingleton.m
//  DesignPattern
//
//  Created by AfterJason on 2020/11/12.
//

#import "NormalSingleton.h"

@implementation NormalSingleton

// 在 .m 文件中声明静态的类实例，不放在 .h 文件中是为了让 instance 私有
static NormalSingleton *instance = nil;

/// 这种实现方式不能保证线程安全
+ (NormalSingleton *)getInstance {
    if (instance == nil) {
        instance = [[NormalSingleton alloc] init]; // 调用自己改写的“私有构造函数”
    }
    return instance;
}

/// 相当于构造函数设置为私有，类的实例只能初始化一次
/// @param zone <#zone description#>
+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    if (instance == nil) {
        instance = [super allocWithZone:zone];
    }
    return instance;
}

/// 重写copy方法，会调用 copyWithZone方法，确保单例实例复制时不会重新创建
/// @param zone <#zone description#>
- (id) copyWithZone:(struct _NSZone *)zone {
    return  instance;
}

@end

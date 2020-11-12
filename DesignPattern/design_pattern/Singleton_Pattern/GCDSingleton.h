//
//  GCDSingleton.h
//  DesignPattern
//
//  Created by AfterJason on 2020/11/12.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/// 使用GCD来实现单例模式
@interface GCDSingleton : NSObject

/// 提供外部调用的方法
+ (GCDSingleton *) getInstance;

@end

NS_ASSUME_NONNULL_END

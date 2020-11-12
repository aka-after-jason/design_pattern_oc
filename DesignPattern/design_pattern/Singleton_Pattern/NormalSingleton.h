//
//  NormalSingleton.h
//  DesignPattern
//
//  Created by AfterJason on 2020/11/12.
//

#import <Foundation/Foundation.h>
/**
 a. 设计一个私有的构造函数
 b. 设计一个私有的，本类对象
 c. 设计一个类方法，提供外部使用
 */

NS_ASSUME_NONNULL_BEGIN

/// 常规单例实现
@interface NormalSingleton : NSObject

/// 提供外部调用的方法（不能保证线程安全）
+ (NormalSingleton *) getInstance;

@end

NS_ASSUME_NONNULL_END

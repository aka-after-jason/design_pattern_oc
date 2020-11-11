//
//  ButtonProtocol.h
//  DesignPattern
//
//  Created by AfterJason on 2020/11/11.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/// Button接口：抽象产品
@protocol ButtonProtocol <NSObject>

// 展示的方法
- (void)display;

@end

NS_ASSUME_NONNULL_END

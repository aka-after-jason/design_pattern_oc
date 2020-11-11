//
//  TextFieldProtocol.h
//  DesignPattern
//
//  Created by AfterJason on 2020/11/11.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/// TextField接口：抽象产品
@protocol TextFieldProtocol <NSObject>

// 展示
- (void)display;

@end

NS_ASSUME_NONNULL_END

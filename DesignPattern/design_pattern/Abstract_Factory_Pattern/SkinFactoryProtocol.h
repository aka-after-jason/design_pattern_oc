//
//  SkinFactoryProtocol.h
//  DesignPattern
//
//  Created by AfterJason on 2020/11/11.
//

#import <Foundation/Foundation.h>
#import "ButtonProtocol.h"
#import "TextFieldProtocol.h"
#import "ComboBoxProtocol.h"

NS_ASSUME_NONNULL_BEGIN

/// SkinFactory:抽象工厂
@protocol SkinFactoryProtocol <NSObject>

- (id<ButtonProtocol>) createButton;
- (id<TextFieldProtocol>) createTextField;
- (id<ComboBoxProtocol>) createComboBox;

@end

NS_ASSUME_NONNULL_END

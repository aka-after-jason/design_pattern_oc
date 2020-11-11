//
//  SpringSkinFactory.m
//  DesignPattern
//
//  Created by AfterJason on 2020/11/11.
//

#import "SpringSkinFactory.h"
#import "SpringButton.h"
#import "SpringTextField.h"
#import "SpringComboBox.h"

@implementation SpringSkinFactory

- (id<ButtonProtocol>)createButton {
    SpringButton *button = [[SpringButton alloc] init];
    NSLog(@"创建Spring皮肤的Button");
    return button;
}

- (id<TextFieldProtocol>)createTextField {
    SpringTextField *textField = [[SpringTextField alloc] init];
    NSLog(@"创建Spring皮肤的TextField");
    return textField;
}

- (id<ComboBoxProtocol>)createComboBox {
    SpringComboBox *comboBox = [[SpringComboBox alloc] init];
    NSLog(@"创建Spring皮肤的ComboBox");
    return comboBox;
}

@end

//
//  SummerSkinFactory.m
//  DesignPattern
//
//  Created by AfterJason on 2020/11/11.
//

#import "SummerSkinFactory.h"
#import "SummerButton.h"
#import "SummerTextField.h"
#import "SummerComboBox.h"

@implementation SummerSkinFactory

- (id<ButtonProtocol>)createButton {
    SummerButton *button = [[SummerButton alloc] init];
    NSLog(@"创建Summer皮肤的Button");
    return button;
}

- (id<TextFieldProtocol>)createTextField {
    SummerTextField *textField = [[SummerTextField alloc] init];
    NSLog(@"创建Summer皮肤的TextField");
    return textField;
}

- (id<ComboBoxProtocol>)createComboBox {
    SummerComboBox *comboBox = [[SummerComboBox alloc] init];
    NSLog(@"创建Summer皮肤的ComboBox");
    return comboBox;
}

@end

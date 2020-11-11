//
//  Abstract_Factory_Pattern_Main_TestVC.m
//  DesignPattern
//
//  Created by AfterJason on 2020/11/11.
//

#import "Abstract_Factory_Pattern_Main_TestVC.h"
#import "SkinFactoryProtocol.h"
#import "ButtonProtocol.h"
#import "SpringSkinFactory.h"
#import "TextFieldProtocol.h"
#import "ComboBoxProtocol.h"
#import "SummerSkinFactory.h"

@interface Abstract_Factory_Pattern_Main_TestVC ()

@end

@implementation Abstract_Factory_Pattern_Main_TestVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    id<SkinFactoryProtocol> skinFactory;
    id<ButtonProtocol> button;
    skinFactory = [[SummerSkinFactory alloc] init];
    button = [skinFactory createButton];
    [button display];
    
    id<TextFieldProtocol> textField;
    textField = [skinFactory createTextField];
    [textField display];
    
    id<ComboBoxProtocol> comboBox;
    comboBox = [skinFactory createComboBox];
    [comboBox display];
    
}

@end

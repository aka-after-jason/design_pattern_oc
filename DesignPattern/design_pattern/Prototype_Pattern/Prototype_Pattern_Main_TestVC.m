//
//  Prototype_Pattern_Main_TestVC.m
//  DesignPattern
//
//  Created by AfterJason on 2020/11/17.
//

#import "Prototype_Pattern_Main_TestVC.h"
#import "PrototypePerson.h"

@interface Prototype_Pattern_Main_TestVC ()

@end

@implementation Prototype_Pattern_Main_TestVC

/**
 
 原型模式：
 概述:用原型实例指定创建对象的种类，并且通过拷贝这些原型创建新的对象
 
 使用场景：
 “某些结构复杂的对象”的创建工作
 
 OC中使用原型模式：
 在OC中使用原型模式，就是说对对象的复制，就是我们常说的深拷贝和浅拷贝。
 也就是说如果要实现拷贝，就需要实现 NSCopying 协议和 (id)copyWithZone:(NSZone *)zone 的方法。
 如果是可变的要实现 NSMutableCopying协议和 (id)copyWithZone:(NSZone *)zone 的方法
 
 深拷贝、浅拷贝
 浅拷贝：只是复制了指针的地址，并没有复制该指针指向的地址
 深拷贝：不但复制了指针地址，还复制了指针地址所指向的值
 */

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //[self shallowcopy_deepcopy];
    
    // 测试原型模式
    // 平常模式
//    PrototypePerson *jason = [[PrototypePerson alloc] initWithName:@"jason"];
//    [jason addBook:@"python"];
//    PrototypePerson *angel = [[PrototypePerson alloc] initWithName:@"angel"];
//    [angel addBook:@"excel"];
//    NSLog(@"jason:%p",jason);
//    NSLog(@"angel:%p",angel);
    
    // 原型模式
    PrototypePerson *jason = [[PrototypePerson alloc] initWithName:@"jason"];
    [jason addBook:@"python"];
    [jason addBook:@"java"];
    [jason addBook:@"objective-c"];
    [jason addBook:@"swift"];
    [jason addBook:@"go"];
    PrototypePerson *angel = [jason copy];
    angel.name = @"angel";
    [angel addBook:@"doc"];
    [angel addBook:@"excel"];
    NSLog(@"jason:%p",jason);
    for (NSString *book in jason.bookArray) {
        NSLog(@"jason->book:%p",book);
    }
    NSLog(@"angel:%p",angel);
    for (NSString *book in angel.bookArray) {
        NSLog(@"angel->book:%p",book);
    }
    /**
     从控制台上的打印可以看出，jason 和 angel的内存地址不一样，说明实现了深拷贝，
     angel买了jason所有的书，并且angel自己也买了两本书
     */
}




/// 浅拷贝和深拷贝的解析
- (void)shallowcopy_deepcopy {
    
    /*************集合类型*************/
    NSLog(@"*************1.非可变集合类型 NSDictionary**************");
    /**1.非可变集合*/
    NSDictionary *dic = @{@"name":@"jason",@"age":@28};
    NSDictionary *dic_retain = [dic retain]; // 浅拷贝
    NSDictionary *dic_copy = [dic copy]; // 浅拷贝
    NSDictionary *dic_mutablecopy = [dic mutableCopy]; // 深拷贝
    // 内容地址
    NSLog(@"非可变集合dic的初始内容地址：%p",dic);
    NSLog(@"非可变集合dic经retain操作后的内容地址：%p",dic_retain);
    NSLog(@"非可变集合dic经copy操作后的内容地址：%p",dic_copy);
    NSLog(@"非可变集合dic经mutableCopy操作后的内容地址：%p",dic_mutablecopy);
    // 指针地址
    NSLog(@"非可变集合dic的初始指针地址：%p",&dic);
    NSLog(@"非可变集合dic经retain操作后的指针地址：%p",&dic_retain);
    NSLog(@"非可变集合dic_copy经copy操作后的指针地址：%p",&dic_copy);
    NSLog(@"非可变集合dic_mutablecopy经mutableCopy操作后的指针地址：%p",&dic_mutablecopy);
    /**
     从上面的结果可以看出：
     非可变集合类型的retain操作是指针拷贝
     非可变集合类型的copy操作是指针拷贝
     非可变集合类型的mutableCopy操作时深拷贝
     */
    NSLog(@"\n");
    NSLog(@"*************2.可变集合类型 NSMutableDictionary**************");
    NSMutableDictionary *mutable_dic = [[NSMutableDictionary alloc] initWithDictionary:dic];
    NSMutableDictionary *mutable_dic_retain = [mutable_dic retain]; // 浅拷贝
    NSMutableDictionary *mutable_dic_copy = [mutable_dic copy]; // 深拷贝
    //mutable_dic_copy[@"name"] = @"angel";
    NSMutableDictionary *mutable_dic_mutablecopy = [mutable_dic mutableCopy]; // 深拷贝
    // 内容地址
    NSLog(@"可变集合mutable_dic的初始内容地址：%p",mutable_dic);
    NSLog(@"可变集合mutable_dic经retain操作后的内容地址：%p",mutable_dic_retain);
    NSLog(@"可变集合mutable_dic经copy操作后的内容地址：%p",mutable_dic_copy);
    NSLog(@"非可变集合mutable_dic经mutableCopy操作后的内容地址：%p",mutable_dic_mutablecopy);
    // 指针地址
    NSLog(@"可变集合mutable_dic的初始指针地址：%p",&mutable_dic);
    NSLog(@"可变集合mutable_dic经retain操作后的指针地址：%p",&mutable_dic_retain);
    NSLog(@"可变集合mutable_dic经copy操作后的指针地址：%p",&mutable_dic_copy);
    NSLog(@"可变集合mutable_dic经mutableCopy操作后的指针地址：%p",&mutable_dic_mutablecopy);
    /**
     从上面的结果可以看出：
     可变集合的retain操作是浅拷贝
     可变集合的copy操作是深拷贝
     可变集合的mutableCopy操作是深拷贝
     可变集合的copy操作返回的是一个不可变对象
     */
    NSLog(@"\n");
    /*************非集合类型*************/
    NSLog(@"*************3.非集合不可变类型 NSString**************");
    NSString *str = @"Jason loves Angel";
    NSString *str_retain = [str retain]; // 浅拷贝
    NSString *str_copy = [str copy]; // 浅拷贝
    NSString *str_mutablecopy = [str mutableCopy]; // 深拷贝
    // 内容地址
    NSLog(@"非集合不可变类型str的初始内容地址：%p",str);
    NSLog(@"非集合不可变类型str经retain操作后的内容地址：%p",str_retain);
    NSLog(@"非集合不可变类型str经copy操作后的内容地址：%p",str_copy);
    NSLog(@"非集合不可变类型str经mutableCopy操作后的内容地址：%p",str_mutablecopy);
    // 指针地址
    NSLog(@"非集合不可变类型str的初始指针地址：%p",&str);
    NSLog(@"非集合不可变类型str经retain操作后的指针地址：%p",&str_retain);
    NSLog(@"非集合不可变类型str经copy操作后的指针地址：%p",&str_copy);
    NSLog(@"非集合不可变类型str经mutableCopy操作后的指针地址：%p",&str_mutablecopy);
    /**
     从上面可以看出：
     非集合不可变类型NSString的retain操作是浅拷贝
     非集合不可变类型NSString的copy操作是浅拷贝
     非集合不可变类型NSString的mutableCopy操作是深拷贝
     */
    NSLog(@"\n");
    NSLog(@"*************4.非集合可变类型 NSMutableString**************");
    NSMutableString *mutable_str = [NSMutableString stringWithString:str];
    NSMutableString *mutable_str_retain = [mutable_str retain]; // 浅拷贝
    NSMutableString *mutable_str_copy = [mutable_str copy]; // 深拷贝
    //[mutable_str_copy appendString:@"hello world"];
    NSMutableString *mutable_str_mutablecopy = [mutable_str mutableCopy];// 深拷贝
    // 内容地址
    NSLog(@"非集合可变类型mutable_str的初始内容地址：%p",mutable_str);
    NSLog(@"非集合可变类型mutable_str经retain操作后的内容地址：%p",mutable_str_retain);
    NSLog(@"非集合可变类型mutable_str经copy操作后的内容地址：%p",mutable_str_copy);
    NSLog(@"非集合可变类型mutable_str经mutableCopy操作后的内容地址：%p",mutable_str_mutablecopy);
    // 指针地址
    NSLog(@"非集合可变类型mutable_str的初始指针地址：%p",&mutable_str);
    NSLog(@"非集合可变类型mutable_str经retain操作后的指针地址：%p",&mutable_str_retain);
    NSLog(@"非集合可变类型mutable_str经copy操作后的指针地址：%p",&mutable_str_copy);
    NSLog(@"非集合可变类型mutable_str经mutableCopy操作后的指针地址：%p",&mutable_str_mutablecopy);
    /**
     从上面可以看出：
     非集合可变类型NSMutableString的retain操作是浅拷贝
     非集合可变类型NSMutableString的copy操作是深拷贝
     非集合可变类型NSMutableString的mutableCopy操作是深拷贝
     非集合可变类型NSMutableString的copy操作返回的是一个不可变对象
     */
    NSLog(@"\n");
    NSLog(@"*************5.不可变数组类型 NSArray**************");
    NSArray *array = @[@"a",@"b",@"c"];
    NSArray *array_retain = [array retain]; // 浅拷贝
    NSArray *array_copy = [array copy]; // 浅拷贝
    NSArray *array_mutablecopy = [array mutableCopy]; // 深拷贝
    // 内容地址
    NSLog(@"不可变数组类型array的初始内容地址：%p",array);
    NSLog(@"不可变数组类型array经retain操作后的内容地址：%p",array_retain);
    NSLog(@"不可变数组类型array经copy操作后的内容地址：%p",array_copy);
    NSLog(@"不可变数组类型array经mutableCopy操作后的内容地址：%p",array_mutablecopy);
    // 指针地址
    NSLog(@"不可变数组类型array的初始指针地址：%p",&array);
    NSLog(@"不可变数组类型array经retain操作后的指针地址：%p",&array_retain);
    NSLog(@"不可变数组类型array经copy操作后的指针地址：%p",&array_copy);
    NSLog(@"不可变数组类型array经mutableCopy操作后的指针地址：%p",&array_mutablecopy);
    /**
     从上面可以看出：
     不可变数组类型NSArray的retain操作是浅拷贝
     不可变数组类型NSArray的copy操作是浅拷贝
     不可变数组类型NSArray的mutableCopy操作是深拷贝
     */
    NSLog(@"\n");
    NSLog(@"*************6.可变数组类型 NSMutableArray**************");
    NSMutableArray *mutable_array = [NSMutableArray arrayWithArray:array];
    NSMutableArray *mutable_array_retain = [mutable_array retain]; // 浅拷贝
    NSMutableArray *mutable_array_copy = [mutable_array copy]; // 深拷贝
    NSMutableArray *mutable_array_mutablecopy = [mutable_array mutableCopy]; // 深拷贝
    // 内容地址
    NSLog(@"可变数组类型mutable_array的初始内容地址：%p",mutable_array);
    NSLog(@"可变数组类型mutable_array经retain操作后的内容地址：%p",mutable_array_retain);
    NSLog(@"可变数组类型mutable_array经copy操作后的内容地址：%p",mutable_array_copy);
    NSLog(@"可变数组类型mutable_array经mutableCopy操作后的内容地址：%p",mutable_array_mutablecopy);
    // 指针地址
    NSLog(@"可变数组类型mutable_array的初始指针地址：%p",&mutable_array);
    NSLog(@"可变数组类型mutable_array经retain操作后的指针地址：%p",&mutable_array_retain);
    NSLog(@"可变数组类型mutable_array经copy操作后的指针地址：%p",&mutable_array_copy);
    NSLog(@"可变数组类型mutable_array经mutableCopy操作后的指针地址：%p",&mutable_array_mutablecopy);
    /**
     从上面可以看出：
     可变数组类型 NSMutableArray的retain操作是浅拷贝
     可变数组类型 NSMutableArray的copy操作是深拷贝
     可变数组类型 NSMutableArray的mutableCopy操作是深拷贝
     */
    
}

@end

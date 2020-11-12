//
//  Singleton_Pattern_Main_TestVC.m
//  DesignPattern
//
//  Created by AfterJason on 2020/11/12.
//

#import "Singleton_Pattern_Main_TestVC.h"
#import "NormalSingleton.h"
#import "GCDSingleton.h"

@interface Singleton_Pattern_Main_TestVC ()

@end

@implementation Singleton_Pattern_Main_TestVC

/**
 OC 中两种单例实现方式
 
 1. 常规实现
    与 c++ 中相似，在 OC 中实现单例需要满足一下条件
    a. 设计一个私有的构造函数
    b. 设计一个私有的，本类对象
    c. 设计一个类方法，提供外部使用
 
    在 OC 中，对象的创建包括两个步骤：内存申请(alloc) 和 初始化(init).
    也就是说，如果我们希望构造函数私有，那么我们要自己定义alloc方法，
    在 OC 中，调用 alloc 时，alloc 实际上调用了 allocWithZone 这个方法来申请内存，因此我们在设计单例的时候，要
    重写这个方法，另外，我们还要保证使用 copy 复制单例中的对象，因此，还需要实现 copyWithZone这个方法。
 
 2. GCD 方式的单例
    GCD 是苹果提供的一种多线程的实现方案。 使用 GCD，用户不用手动管理线程的生命周期，非常方便。
    GCD 提供了一个多线程下，一段代码只被执行一次的方法: dispatch_once. 这种方式是线程安全的。
 
 */


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // NormalSingleton test
    
    // 使用 getInstance 方法
    NormalSingleton *normalSingleton1 = [NormalSingleton getInstance];
    // 使用 alloc + init 方法
    NormalSingleton *normalSingleton2 = [[NormalSingleton alloc] init];
    // 使用 alloc + init 方法，打印 copy 后的内容
    NormalSingleton *normalSingleton3 = [[NormalSingleton alloc] init];
    NSLog(@"normalSingleton1 = %@",normalSingleton1);
    NSLog(@"normalSingleton3 = %@",normalSingleton2);
    NSLog(@"normalSingleton4 = %@",[normalSingleton3 copy]);
    
    // GCDSingleton test
    // 使用 getInstance 方法
    GCDSingleton *gcdSingleton1 = [GCDSingleton getInstance];
    GCDSingleton *gcdSingleton2 = [[GCDSingleton alloc] init];
    GCDSingleton *gcdSingleton3 = [[GCDSingleton alloc] init];
    NSLog(@"gcdSingleton1 = %@",gcdSingleton1);
    NSLog(@"gcdSingleton2 = %@",gcdSingleton2);
    NSLog(@"gcdSingleton3 = %@",[gcdSingleton3 copy]);
    
}

@end

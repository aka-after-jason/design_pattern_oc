//
//  Simple_Factory_Pattern_Main_TestVC.m
//  DesignPattern
//
//  Created by AfterJason on 2020/11/10.
//

#import "Simple_Factory_Pattern_Main_TestVC.h"
#import "ChartFactory.h"
#import "ChartProtocol.h"
#import "Tools.h"

@interface Simple_Factory_Pattern_Main_TestVC ()

@end

@implementation Simple_Factory_Pattern_Main_TestVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
//    // 获取 chart_type.plist文件的内容
//    NSString *plistPath = [[NSBundle mainBundle] pathForResource:@"chart_type" ofType:@"plist"];
//    NSMutableDictionary *dic = [[NSMutableDictionary alloc] initWithContentsOfFile:plistPath];
//    // 手动获取 plist 文件的属性值
//    NSString *chart_type = [dic valueForKey:@"chart_type"];
    
    /********************************1. 简单工厂模式*****************************/
    id<ChartProtocol> chart;
    chart = [ChartFactory getChart:[Tools get_chart_type]];// 1.histogram 2.pie  3.line 这里可以将类型写在plist文件中，符合“开闭原则”
    [chart display];
    /**
     简单工厂模式的总结:
     
     简单工厂模式提供了专门的工厂类用于创建对象，将对象的创建和对象的使用分离开，它作为一种最简单的工厂模式在软件开发中得到了广泛的应用。
     1. 主要优点：
          a. 工厂类包含必要的判断逻辑，可以决定在什么时候创建哪一个产品类的实例，客户端可以免除直接创建产品对象的职责，
             而仅仅“消费”产品，简单工厂模式实现了对象创建和使用的分离
          b. 客户端无须知道所创建的具体产品类的类名，只需要知道具体产品类所对应的参数即可，对于一些复杂的类名，通过简单工厂模式可以在
             一定程度上减少使用者的记忆量
          c. 通过引入配置文件，可以在不修改任何客户端代码的情况下更换和增加新的具体产品类。
     
     2. 主要缺点：
          a. 由于工厂类集中了所有产品的创建逻辑，职责过重，一旦不能工作，整个系统都收到影响
          b. 使用简单工厂模式势必会增加系统中类的个数（增加了系统的复杂度和理解难度）
          c. 系统扩展困难，一旦添加新产品就不得不修改工厂逻辑，在产品较多时，有可能造成工厂逻辑过于复杂，不利于系统的扩展和维护。
     
     3. 适用场景：
          a. 工厂类负责创建的对象比较少，由于创建的对象较少，不会造成工厂方法中的业务逻辑太过复杂。
          b. 客户端只知道传入工厂类的参数，对于如何创建对象并不关心。
     */
    
    
    /********************************1. 简单工厂模式*****************************/
}

@end

//
//  Tools.m
//  DesignPattern
//
//  Created by AfterJason on 2020/11/9.
//

#import "Tools.h"

@implementation Tools

+ (NSString *)get_chart_type {
    // 获取 chart_type.plist文件的内容
    NSString *plistPath = [[NSBundle mainBundle] pathForResource:@"chart_type" ofType:@"plist"];
    NSMutableDictionary *dic = [[NSMutableDictionary alloc] initWithContentsOfFile:plistPath];
    // 手动获取 plist 文件的属性值
    NSString *chart_type = [dic valueForKey:@"chart_type"];
    return chart_type;
}

+ (id)get_object {
    // 获取 chart_type.plist文件的内容
    NSString *plistPath = [[NSBundle mainBundle] pathForResource:@"class_name" ofType:@"plist"];
    NSMutableDictionary *dic = [[NSMutableDictionary alloc] initWithContentsOfFile:plistPath];
    // 手动获取 plist 文件的属性值
    NSString *class_name = [dic valueForKey:@"class_name"];
    // 通过OC的反射机制，将字符串转换为类对象
    Class class = NSClassFromString(class_name);
    return class;
}

@end

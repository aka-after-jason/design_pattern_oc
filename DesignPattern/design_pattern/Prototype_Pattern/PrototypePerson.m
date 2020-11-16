//
//  PrototypePerson.m
//  DesignPattern
//
//  Created by AfterJason on 2020/11/17.
//

#import "PrototypePerson.h"

@implementation PrototypePerson

- (instancetype)initWithName:(NSString *)name {
    self = [super init];
    if (self) {
        _name = name;
        _bookArray = [[NSMutableArray alloc] initWithCapacity:20];
    }
    return self;
}

- (void)addBook:(NSString *)bookName {
    [_bookArray addObject:bookName];
}

/// 实现copyWithZone方法
/// @param zone <#zone description#>
- (id)copyWithZone:(NSZone *)zone {
    PrototypePerson *prototypePerson = [[PrototypePerson alloc] initWithName:_name];
    prototypePerson.bookArray = [_bookArray mutableCopy]; // 这里对书进行了一次深拷贝
    return prototypePerson;
}

@end

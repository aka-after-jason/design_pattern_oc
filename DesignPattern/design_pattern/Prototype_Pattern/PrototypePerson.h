//
//  PrototypePerson.h
//  DesignPattern
//
//  Created by AfterJason on 2020/11/17.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/// 原型类
@interface PrototypePerson : NSObject<NSCopying>

/// 书籍数组
@property(nonatomic,strong) NSMutableArray<NSString *> *bookArray;

/// 姓名
@property(nonatomic,copy) NSString *name;

/// init方法
/// @param name <#name description#>
- (instancetype) initWithName:(NSString *)name;

/// 添加书
/// @param bookName <#bookName description#>
- (void) addBook:(NSString *)bookName;

@end

NS_ASSUME_NONNULL_END

//
//  ChartFactory.h
//  DesignPattern
//
//  Created by AfterJason on 2020/11/9.
//

#import <Foundation/Foundation.h>
#import "ChartProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface ChartFactory : NSObject

+ (id<ChartProtocol>)getChart:(NSString *)type;

@end

NS_ASSUME_NONNULL_END

//
//  Factory_Method_Pattern_Main_TestVC.m
//  DesignPattern
//
//  Created by AfterJason on 2020/11/10.
//

#import "Factory_Method_Pattern_Main_TestVC.h"
#import "LoggerFactoryProtocol.h"
#import "LoggerProtocol.h"
#import "FileLoggerFactory.h"
#import "DatabaseLoggerFactory.h"
#import "Tools.h"

@interface Factory_Method_Pattern_Main_TestVC ()

@end

@implementation Factory_Method_Pattern_Main_TestVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    id<LoggerFactoryProtocol> loggerFactory;
    id<LoggerProtocol> logger;
    loggerFactory = [[DatabaseLoggerFactory alloc] init];//(id<LoggerFactoryProtocol>)[Tools get_object];
    logger = [loggerFactory createLogger];
    [logger writeLog];
    
}


@end

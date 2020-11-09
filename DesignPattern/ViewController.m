//
//  ViewController.m
//  DesignPattern
//
//  Created by AfterJason on 2020/11/9.
//

#import "ViewController.h"
#import "ChartFactory.h"
#import "ChartProtocol.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // 1. 简单工厂模式
    id<ChartProtocol> chart;
    chart = [ChartFactory getChart:@"line"]; // 1.histogram 2.pie  3.line
    [chart display];
}

@end

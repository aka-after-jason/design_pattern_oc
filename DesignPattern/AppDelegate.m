//
//  AppDelegate.m
//  DesignPattern
//
//  Created by AfterJason on 2020/11/9.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
        self.window = [[UIWindow alloc] init];
        ViewController *vc = [ViewController new];
        vc.view.backgroundColor = UIColor.whiteColor;
        self.window.rootViewController = vc;
        [self.window makeKeyAndVisible];
    
    return YES;
}



@end

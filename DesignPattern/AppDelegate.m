//
//  AppDelegate.m
//  DesignPattern
//
//  Created by AfterJason on 2020/11/9.
//

#import "AppDelegate.h"
#import "Singleton_Pattern_Main_TestVC.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
        self.window = [[UIWindow alloc] init];
    Singleton_Pattern_Main_TestVC *vc = [Singleton_Pattern_Main_TestVC new];
        vc.view.backgroundColor = UIColor.whiteColor;
        self.window.rootViewController = vc;
        [self.window makeKeyAndVisible];
    
    return YES;
}



@end

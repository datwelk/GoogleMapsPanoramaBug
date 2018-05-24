//
//  AppDelegate.m
//  PanoramaViewCrash
//
//  Created by Damiaan Twelker on 24/05/2018.
//  Copyright © 2018 Damiaan Twelker. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@import GoogleMaps;

@interface AppDelegate () {
    UIWindow *_window;
    UINavigationController *_navigationController;
}

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [GMSServices provideAPIKey:@""]; // replace with a google api key
    
    _window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    _navigationController = [[UINavigationController alloc] initWithRootViewController:[self createNewViewController]];
    _window.rootViewController = _navigationController;
    
    [_window makeKeyAndVisible];
    
    return YES;
}

- (void)reinstateRoot
{
    _navigationController.viewControllers = @[[self createNewViewController]];
}

- (ViewController *)createNewViewController
{
    ViewController *vc = [ViewController new];
    vc.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Crash" style:UIBarButtonItemStylePlain target:self action:@selector(reinstateRoot)];
    return vc;
}

@end

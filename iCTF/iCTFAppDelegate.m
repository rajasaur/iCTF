//
//  iCTFAppDelegate.m
//  iCTF
//
//  Created by Raja on 20/10/11.
//  Copyright 2011 Home. All rights reserved.
//

#import "iCTFAppDelegate.h"
#import "SDZCollabNetSoapService.h"

@implementation iCTFAppDelegate


@synthesize window=_window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    [self.window makeKeyAndVisible];
    return YES;
}

- (IBAction) login:(id)sender 
{
    NSString *serverName = [ server text ];
    NSString *user = [ username text ];
    NSString *userPass = [ password text ];
    Boolean protocolStatus = [ protocol isOn ];
    SDZCollabNetSoapService *binding;
    
    if (protocolStatus) {
        binding = [[SDZCollabNetSoapService alloc] 
                   initWithUrl: [[NSString alloc] initWithFormat:@"https://%@/ce-soap60/services/CollabNet", serverName ]];
        
        
    } else {
        binding = [[SDZCollabNetSoapService alloc] 
                   initWithUrl: [[NSString alloc] initWithFormat:@"http://%@/ce-soap60/services/CollabNet", serverName ]];    
    }
    [ binding login:self action:@selector(handleLogin:) userName:user password:userPass];
    
}

- (void)handleLogin:(id)value {
    NSString *display;
    if ([value isKindOfClass:([SoapFault class])]) {
        display = [ value faultString ];
    } else {
        NSString *soapId = value;
        display = soapId;
    }
    [ status setText: display ];
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

@end

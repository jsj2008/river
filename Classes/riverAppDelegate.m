//
//  riverAppDelegate.m
//  river
//
//  Created by Mark Muday on 5/29/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "riverAppDelegate.h"
#import "riverViewController.h"

@implementation riverAppDelegate

@synthesize window;
@synthesize viewController;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];

	return YES;
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end

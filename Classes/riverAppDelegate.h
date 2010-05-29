//
//  riverAppDelegate.h
//  river
//
//  Created by Mark Muday on 5/29/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class riverViewController;

@interface riverAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    riverViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet riverViewController *viewController;

@end


//
//  riverViewController.m
//  river
//
//  Created by Mark Muday on 5/29/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "riverViewController.h"
#import "cocos2d.h"
#import "Terrain.h"

@class Terrain;

@implementation riverViewController


/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	
	self.view.frame = [[UIScreen mainScreen] applicationFrame];
	self.view.multipleTouchEnabled = YES;
	
	// Set up cocos2d
	[[CCDirector sharedDirector] setAnimationInterval:1.0/60];
	[[CCDirector sharedDirector] setDisplayFPS:YES];
	
	// Attach in view
	[[CCDirector sharedDirector] attachInView:self.view];
	
	// Create Scene
	CCScene * scene = [CCScene node];
	terrtain = [[Terrain alloc] init];
	[scene addChild:terrtain];
	
	// Run scene
	if([[CCDirector sharedDirector] runningScene])
		[[CCDirector sharedDirector] replaceScene:scene];
	else [[CCDirector sharedDirector] runWithScene:scene];
	
	// Schedule update
	CCTimer * timer = [CCTimer timerWithTarget:terrtain selector:@selector(update:)];
	[[CCScheduler sharedScheduler] scheduleTimer:timer];	
	
}


// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return YES;
}

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end

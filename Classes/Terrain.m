//
//  Terrain.m
//  river
//
//  Created by Mark Muday on 5/29/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "Terrain.h"
@class Boat;


@implementation Terrain
- (id) init {
	if (![super init])
		return nil;
	
	
	// Add floor
	CCSprite * floor = [CCSprite spriteWithFile:@"gymfloorBig.jpg"];
	floor.position = CGPointMake(768/2, 1024/2);
	[self addChild:floor];	

	
//		return [[[self alloc] init] autorelease];
	
	// Add boat
	boat = [[[Boat alloc] init] retain];
	boat.position = CGPointMake(384, 100);
	[self addBoat:boat];	
	
	return self;
}

- (void) addBoat:(Boat *)boat1 {
	[self addChild:boat1.sprite];
//	cpSpaceAddBody(space, player.body);
//	cpSpaceAddShape(space, player.shape);
}


@end

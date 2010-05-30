//
//  Boat.m
//  river
//
//  Created by Mark Muday on 5/29/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "Boat.h"


@implementation Boat
@synthesize sprite;

- (id) init {
	if (![super init])
		return nil;
	// Sprite
	sprite = [[CCSprite alloc] initWithFile:@"raftVector.png"];
	[sprite setPosition:CGPointMake(512, 900)];
	return self;
}


- (void) setPosition:(CGPoint)location {
//	body->p.x = location.x;
//	body->p.y = location.y;
	[sprite setPosition:location];
}

- (CGPoint) position {
//	return CGPointMake(body->p.x, body->p.y);
}

- (void) setRotation:(CGFloat)rotation {
	sprite.rotation = rotation;
//	body->rot = cpvforangle(rotation/180*M_PI);
}

- (CGFloat) rotation {
	return 0;
//	return cpvtoangle(body->rot)/M_PI*180;
}

@end

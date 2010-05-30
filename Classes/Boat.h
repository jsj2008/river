//
//  Boat.h
//  river
//
//  Created by Mark Muday on 5/29/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"
//#import "chipmunk.h"


@interface Boat : NSObject {
		CCSprite * sprite;
//		cpBody * body;
//		cpShape * shape;
}	
	@property (nonatomic, readonly) CCSprite * sprite;
//	@property (nonatomic, readonly) cpBody * body;
//	@property (nonatomic, readonly) cpShape * shape;
	@property (nonatomic, assign) CGPoint position;
	@property (nonatomic, assign) CGFloat rotation;
	@property (nonatomic, assign) CGFloat velocity;
	@property (nonatomic, assign) CGFloat angle;
	
	+ (id) boat;
	- (void) update:(ccTime)dt;
	
	@end
	
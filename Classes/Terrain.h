//
//  Terrain.h
//  river
//
//  Created by Mark Muday on 5/29/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "cocos2d.h"
#import "Boat.h"

@interface Terrain  : CCColorLayer {
	Boat * boat;
	CGFloat fl; // this is temporary and should be removed.  Using it to wobble the boat for kicks.

}

@end

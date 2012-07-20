//
//  emjAssertARC.h
//  arcTest
//
//  Created by Radif Sharafullin on 6/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#if !__has_feature(objc_arc)
#error THIS CODE MUST BE COMPILED WITH ARC ENABLED!
#endif

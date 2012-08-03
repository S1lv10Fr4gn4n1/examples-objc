//
//  MyProtocol.h
//  ExampleObjectiveC10
//
//  Created by Silvio Fragnani on 04/10/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@protocol MyProtocol <NSObject>

@optional
- (void) doSomething;

@required
- (void) doesNothing;

@end

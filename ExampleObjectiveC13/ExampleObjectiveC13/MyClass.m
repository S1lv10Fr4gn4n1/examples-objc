//
//  MyClass.m
//  ExampleObjectiveC13
//
//  Created by Silvio Fragnani on 06/10/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "MyClass.h"


@implementation MyClass

@synthesize desc;

- (id)init
{
    self = [super init];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

- (void)dealloc
{
    [super dealloc];
}

-(void) doThing {
	@synchronized(self) { 
		// Critical code. ...
		NSLog(@"doThing");
	}
}

@end

//
//  MyClass.m
//  ExampleObjectiveC06
//
//  Created by Silvio Fragnani on 02/10/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "MyClass.h"


@implementation MyClass

- (id)init
{
    self = [super init];
    if (self) {
		NSLog(@"init: Retain count of %lu", [self retainCount]);
    }
    
    return self;
}

- (void)dealloc
{
	NSLog(@"dealloc called. Bye bye");
    [super dealloc];
}

@end

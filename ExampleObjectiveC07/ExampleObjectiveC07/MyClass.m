//
//  MyClass.m
//  ExampleObjectiveC07
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
        NSLog(@"MyClass init: retain %lu", [self retainCount]);
    }
    
    return self;
}

- (void)dealloc
{
	NSLog(@"MyClass dealloc. Bye!");
	
    [super dealloc];
}

@end

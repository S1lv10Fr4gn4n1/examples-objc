//
//  MyClass.m
//  ExampleObjectiveC08
//
//  Created by Silvio Fragnani on 04/10/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "MyClass.h"


@implementation MyClass

@synthesize code;
@synthesize description;
@synthesize blah = test;

- (id)init
{
    self = [super init];
    if (self) {
        code = 0;
		description = @"";
    }
    
    return self;
}

- (void)dealloc
{
    [super dealloc];
}

@end

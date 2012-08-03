//
//  main.m
//  ExampleObjectiveC10
//
//  Created by Silvio Fragnani on 04/10/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyClass.h"

int main (int argc, const char * argv[])
{

	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	
	// PROTOCOL
	// like 'interface' in Java
	
	MyClass * c = [[MyClass alloc] init];
	[c doSomething];
	
	[c autorelease];

	[pool drain];
    return 0;
}


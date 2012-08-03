//
//  main.m
//  ExampleObjectiveC08
//
//  Created by Silvio Fragnani on 04/10/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyClass.h"

int main (int argc, const char * argv[])
{

	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	
	
	// @propertyes
	MyClass * clazz = [[MyClass alloc] init];
	[clazz setBlah: @"mamae"];
	[clazz setCode: [[NSNumber alloc] initWithInt: 2]];
	
	
	[pool drain];
    return 0;
}


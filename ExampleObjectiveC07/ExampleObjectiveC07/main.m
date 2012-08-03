//
//  main.m
//  ExampleObjectiveC07
//
//  Created by Silvio Fragnani on 02/10/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyClass.h"

int main (int argc, const char * argv[])
{

	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

	MyClass * m = [[MyClass alloc] init];
	[m autorelease];	
	
	//[m dealloc];
	//chapter 11 - Properties
	
	NSLog(@"lalalalalla");
	
	[pool drain];
    return 0;
}


//
//  main.m
//  ExampleObjectiveC06
//
//  Created by Silvio Fragnani on 02/10/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "MyClass.h"

int main (int argc, const char * argv[])
{

	MyClass *myclass = [MyClass new]; 
	// count: 1
	
	[myclass retain]; // count: 2 
	NSLog (@"%lu", [myclass retainCount]);
	
	[myclass retain]; // count: 3 
	NSLog (@"%lu", [myclass retainCount]);
	
	[myclass release]; // count: 2 
	NSLog (@"%lu", [myclass retainCount]);
	
	[myclass release]; // count: 1 
	NSLog (@"%lu", [myclass retainCount]);
	
	[myclass retain]; // count 2 
	NSLog (@"%lu", [myclass retainCount]);
	
	[myclass release]; // count 1 
	NSLog (@"%lu", [myclass retainCount]);
	
	[myclass release]; // count: 0, dealloc it
	return (0);
}


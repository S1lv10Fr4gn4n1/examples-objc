//
//  main.m
//  ExampleobjectiveC11
//
//  Created by Silvio Fragnani on 04/10/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyClass.h"

int main (int argc, const char * argv[])
{

	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	
	// NSDate
	NSDate * d = [[NSDate alloc] init];
	NSLog(@"%@", d);
	
	
	// NSData
	const char * string = "Hi there, this is a C string!";
	NSData * data = [NSData dataWithBytes: string length: strlen(string) +1 ];
	NSLog(@"data is %@", data);
	NSLog(@"%lu bytes string is '%s'", [data length], [data bytes]);
	
	// NSArray para arquivo
	NSArray * array = [NSArray arrayWithObjects: @"I", @"seem", @"dead", @"pixels", nil];
	[array writeToFile: @"/tmp/test.txt" atomically: YES];
	
	// arquivo para NSArray
	NSArray * array2 = [NSArray arrayWithContentsOfFile: @"/tmp/test.txt"];
	NSLog(@"%@", array2);
	
	// persist objects in disk decode/encode
	MyClass * myClass = [[MyClass alloc] initWithCodeAndName: [NSNumber numberWithInt: 2] description: @"silvio"];
	NSData * freezeDried;
	freezeDried = [NSKeyedArchiver archivedDataWithRootObject: myClass];
	
	[myClass release]; 
	myClass = [NSKeyedUnarchiver unarchiveObjectWithData: freezeDried];
	
	[pool drain];
    return 0;
}


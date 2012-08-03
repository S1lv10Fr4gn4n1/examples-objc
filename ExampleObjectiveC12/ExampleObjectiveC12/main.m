//
//  main.m
//  ExampleObjectiveC12
//
//  Created by Silvio Fragnani on 04/10/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyClass.h"

int main (int argc, const char * argv[])
{

	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	
	
	// Key-Value Coding // COCOA
	MyClass * myClass = [[[MyClass alloc] init] autorelease];
	[myClass setCode: [NSNumber numberWithInt: 2]];
	[myClass setDescription: @"silviofragnani"];

	NSString * description = [myClass valueForKey: @"description"]; // aceita path @"engine.horsepower"
	NSLog(@"%@", description);
	
	

	// NSPredicate
	NSPredicate * predicate;
	predicate = [NSPredicate predicateWithFormat: @"code == 2"];
	BOOL match = [predicate evaluateWithObject: myClass];
	NSLog(@"%s", match ? "YES" : "NO");

	// Fuel Filters
//	NSArray * results; 
//	results = [myClassS filteredArrayUsingPredicate: predicate];
//	NSLog (@"%@", results);
	
	//Format Specifiers
	predicate = [NSPredicate predicateWithFormat: @"engine.horsepower > %d", 50];
	predicate = [NSPredicate predicateWithFormat: @"(engine.horsepower > 50) AND (engine.horsepower < 200)"];
	
	NSArray *betweens = [NSArray arrayWithObjects: [NSNumber numberWithInt: 50], [NSNumber numberWithInt: 200], nil]; 
	predicate = [NSPredicate predicateWithFormat: @"engine.horsepower BETWEEN %@", betweens];
	predicate = [NSPredicate predicateWithFormat: @"name IN { 'Herbie', 'Snugs', 'Badger', 'Flap' }"];
	
	// SELF Sufficient
	predicate = [NSPredicate predicateWithFormat: @"SELF.name IN { 'Herbie', 'Snugs', 'Badger', 'Flap' }"];
	
	// String Operations
//	BEGINSWITH:
//	ENDSWITH:
//	CONTAINS:
//	"name CONTAINS udg"
	
	// Like, Fer Sure
//	"name LIKE '???er'"
//	"name LIKE '*er*'"
	
	[pool drain];
    return 0;
}


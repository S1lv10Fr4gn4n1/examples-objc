//
//  main.m
//  ExampleObjectiveC04
//
//  Created by Silvio Fragnani on 29/09/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyClass.h"

int main (int argc, const char * argv[])
{

	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	
	
	// NSArray
	NSArray * array;
	array = [NSArray arrayWithObjects: @"silvio", @"fragnani", nil];
	
	int i;
	
	for (i = 0; i < [array count]; i++) {
		NSLog (@"index %d has %@.", i, [array objectAtIndex: i]);
	}
	
	NSString * word = @"abacate:laranja:maca";
	array = [word componentsSeparatedByString: @":"];
	
	for (i = 0; i < [array count]; i++) {
		NSLog (@"index %d has %@.", i, [array objectAtIndex: i]);
	}
	
	word = [array componentsJoinedByString: @" :-) "];
	NSLog(@"%@", word);
	// ---------------------------------------------------------------------------- //	
	
	
	// NSMutableArray
	NSMutableArray * mutableArray;
	mutableArray = [NSMutableArray arrayWithCapacity: 1];
	
	for (i = 0; i < 14; i++) {
		NSString * s = [[NSString alloc] initWithFormat: @"%d", i];
		[mutableArray addObject: s];
	}
	
	[mutableArray removeObjectAtIndex: 3];
	
	for (i = 0; i < [mutableArray count]; i++) {	
		NSLog(@"valor array mutable: %@", [mutableArray objectAtIndex: i]);
	}
	// ---------------------------------------------------------------------------- //
	
	
	
	// NSEnumerator
	// se mudar o container, a enumeração podera ficar confusa
	// e obter resultados indefinindos
	NSEnumerator * enumerator;
	enumerator = [array objectEnumerator];
	
	id thingie;
	while ((thingie = [enumerator nextObject])) {
		NSLog(@"I found %@", thingie);
	}
	// ---------------------------------------------------------------------------- //

	
	
	// Fast Enumeration macos 10.5
	for (NSString *a in array) {
		NSLog(@"I found %@", a);
	}
	// ---------------------------------------------------------------------------- //

	
	

	// NSDictionary
	MyClass * clazz01 = [[MyClass alloc] init: [[NSNumber alloc] initWithInt: 1] : @"silvio"];
	MyClass * clazz02 = [[MyClass alloc] init: [[NSNumber alloc] initWithInt: 2] : @"macaco"];
	NSDictionary * dic;
	
	dic = [NSDictionary dictionaryWithObjectsAndKeys: clazz01, [clazz01 getCodigo], 
													  clazz02, [clazz02 getCodigo], nil];
	NSNumber * t = [[NSNumber alloc] initWithInt: 2];
	MyClass * clazz03 = [dic objectForKey: t];	
	
	if (clazz03 != NULL) {
		NSLog(@"%@", @"Objeto MyClass encontrado");
	}
	// ---------------------------------------------------------------------------- //

	
	
	// NSMutableDictionary
	NSMutableDictionary * dicMutable;
	dicMutable = [NSMutableDictionary dictionaryWithCapacity: 10];
	[dicMutable setObject: clazz01 forKey: [clazz01 getCodigo]];
	[dicMutable setObject: clazz02 forKey: [clazz02 getCodigo]];
	
	[dicMutable removeObjectForKey: t];
	clazz03 = [dicMutable objectForKey: t];
	if (clazz03 != NULL) {
		NSLog(@"%@", @"Objeto MyClass encontrado");
	}
	// ---------------------------------------------------------------------------- //

	
	
	// NSNumber
	NSNumber * n1 = [NSNumber numberWithInt: 1];
	NSNumber * n2 = [NSNumber numberWithFloat: 1.2];
	NSNumber * n3 = [NSNumber numberWithBool: TRUE];
	NSLog(@"n1: %@", n1);
	NSLog(@"n2: %@", n2);
	NSLog(@"n3: %@", n3);
	// ---------------------------------------------------------------------------- //

	
	
	// NSValue
	NSRect rect = NSMakeRect(1, 2, 2, 3);
	NSValue * value;
	value = [NSValue valueWithBytes: &rect objCType: @encode(NSRect)];
	// ---------------------------------------------------------------------------- //


	
	// NSNull
	[dicMutable setObject:[NSNull null] forKey: @"teste01"];
	
	// ---------------------------------------------------------------------------- //
	
	
	[pool drain];
    
	return 0;
}


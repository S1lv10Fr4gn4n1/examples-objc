//
//  main.m
//  ExampleObjectiveC05
//
//  Created by Silvio Fragnani on 02/10/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	
	NSFileManager *manager = [NSFileManager defaultManager];
	NSString *home = [@"~/Downloads" stringByExpandingTildeInPath];
	NSDirectoryEnumerator *direnum = [manager enumeratorAtPath: home];
	
	NSMutableArray *files = [NSMutableArray arrayWithCapacity: 20];
	
	NSString * fileName;
	
	while ((fileName = [direnum nextObject])) {
		if ([[fileName pathExtension] isEqualTo: @"jpg"]) {
			[files addObject: fileName];
		}
	}
	
	NSEnumerator * fileEnum = [files objectEnumerator];
	
	while ((fileName = [fileEnum nextObject])) {
		NSLog(@"%@", fileName);
	}
	
	[pool drain];
    return 0;
}


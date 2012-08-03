//
//  main.m
//  ExampleObjectiveC13
//
//  Created by Silvio Fragnani on 06/10/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyClass.h"
#import <semaphore.h>

int main (int argc, const char * argv[])
{

	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

	// SEL and @Selector
	SEL setWidthHeight;
	setWidthHeight = @selector(setWidth:height:);
	
	
	NSString * method01 = @"setWidth:height:";
	setWidthHeight = NSSelectorFromString(method01);
	
	NSString * method02;
	method02 = NSStringFromSelector(setWidthHeight);
	
	
	// EXCEPTIONS
	@try {
		if (1 == 1) {
			NSException * e = [NSException exceptionWithName: @"HotTeaException" reason: @"The tea is too hot" userInfo: nil];
			@throw e;
		}
	} @catch (NSException * e) {
		NSLog(@"ocorreu erro: %@ ; %@", [e name], [e reason]);
	} @finally {
		NSLog(@"finally");	}
	
	[pool drain];
	
	
	// THREAD - Exclusao mutua	
	MyClass * myClass = [[MyClass alloc] init];
	[myClass doThing];
	
	
//	Account *account = [Account accountFromString:[accountField stringValue]];
//	
//	// Get the semaphore.
//	id accountSemaphore = [Account semaphore];
//	
//	@synchronized(accountSemaphore) { 
//		// Critical code. ...
//	}
	
	
    return 0;
}


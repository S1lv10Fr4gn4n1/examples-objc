//
//  MyClass.h
//  ExampleObjectiveC08
//
//  Created by Silvio Fragnani on 04/10/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface MyClass : NSObject {
@private
	NSNumber * code;
	NSString * description;
	NSString * test;
}

// somente para get/set normais
// nao pode passar parametros extras
@property (copy) NSNumber * code;
@property (readwrite, copy) NSString * description;
@property (copy) NSString * blah;


/*
 
 // assign 
 property = newValue;
 
 // retain 
 if (property != newValue) {
	[property release]; property = [newValue retain];
 }
 
 // copy 
 if (property != newValue) {
	[property release]; property = [newValue copy];
 }
 
 */

@end

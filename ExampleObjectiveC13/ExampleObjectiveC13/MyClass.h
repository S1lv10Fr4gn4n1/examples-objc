//
//  MyClass.h
//  ExampleObjectiveC13
//
//  Created by Silvio Fragnani on 06/10/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface MyClass : NSObject {
@private
	NSString * desc; 
}

@property (copy) NSString * desc;

-(void) doThing;

@end

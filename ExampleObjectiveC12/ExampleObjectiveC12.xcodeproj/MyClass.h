//
//  MyClass.h
//  ExampleObjectiveC12
//
//  Created by Silvio Fragnani on 04/10/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyClass : NSObject {
@private
    NSNumber * code;
	NSString * description;
}

@property (readwrite, copy) NSNumber * code;
@property (readwrite, copy) NSString * description;

@end

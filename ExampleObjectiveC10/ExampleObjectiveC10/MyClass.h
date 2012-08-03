//
//  MyClass.h
//  ExampleObjectiveC10
//
//  Created by Silvio Fragnani on 04/10/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyProtocol.h"

@interface MyClass : NSObject<MyProtocol, NSCopying> {
@private
    NSNumber * code;
	NSString * description;
}

@property (readwrite, copy) NSNumber * code;
@property (readwrite, copy) NSString * description;

@end

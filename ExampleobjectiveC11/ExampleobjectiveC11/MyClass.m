//
//  MyClass.m
//  ExampleobjectiveC11
//
//  Created by Silvio Fragnani on 04/10/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "MyClass.h"


@implementation MyClass

@synthesize code;
@synthesize description;

- (id)init
{
    self = [super init];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

- (void)dealloc
{
	[code release];
	[description release];
	
    [super dealloc];
}


- (id) initWithCodeAndName: (NSNumber*) _code 
			   description: (NSString*) _desc {
	if ((self = [super init])) {
		self.code = _code;
		self.description = _desc;
	}
	
	return self;
}

- (void)encodeWithCoder:(NSCoder *) coder {
	[coder encodeObject: code forKey: @"code"];
	[coder encodeObject: description forKey: @"description"];
	
}

- (id)initWithCoder:(NSCoder *) decoder {
	if ((self = [super init])) {
		self.code = [decoder decodeObjectForKey: @"code"];
		self.description = [decoder decodeObjectForKey: @"description"];
	}
	return self;	
}
@end

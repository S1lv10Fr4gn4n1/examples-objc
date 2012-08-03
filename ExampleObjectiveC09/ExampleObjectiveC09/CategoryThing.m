//
//  CategoryThing.m
//  ExampleObjectiveC09
//
//  Created by Silvio Fragnani on 04/10/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "CategoryThing.h"


@implementation CategoryThing

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
    [super dealloc];
}

- (NSString *) description {
	NSString *desc; desc = [NSString stringWithFormat: @"%d %d %d",
							thing1, thing2, thing3]; return (desc);
} // description

@end

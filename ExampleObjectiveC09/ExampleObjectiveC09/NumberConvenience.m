//
//  NumberConvenience.m
//  ExampleObjectiveC09
//
//  Created by Silvio Fragnani on 04/10/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "NumberConvenience.h"


@implementation NSString (NumberConvenience)

- (NSNumber*) lengthAsNumber {
	unsigned long length = [self length];
	return ([NSNumber numberWithUnsignedLong: length]);
}

@end

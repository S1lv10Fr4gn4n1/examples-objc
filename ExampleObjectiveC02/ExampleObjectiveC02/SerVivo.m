//
//  SerVivo.m
//  ExampleObjectiveC02
//
//  Created by Silvio Fragnani on 27/09/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "SerVivo.h"


@implementation SerVivo

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

- (void) respira 
{
	NSLog(@"Ser Vivo: Respira");
}
				
+ (void) print 
{
	NSLog(@"Sou Ser Vivo");
}
@end

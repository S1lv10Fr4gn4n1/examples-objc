//
//  MyClass.m
//  ExampleObjectiveC10
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
        NSLog(@"init MyClass");
    }
    
    return self;
}

- (void)dealloc
{
	NSLog(@"dealloc MyClass");
    [super dealloc];
}

- (void) doSomething {
	NSLog(@"doSomething");
}

// Copia deep (profunda) faz copia do objeto e nao somente da referencia.
- (id)copyWithZone:(NSZone *)zone {
	MyClass * newMyClass;
	newMyClass = [[[self class] allocWithZone: zone] init];
	return  newMyClass;
}

@end

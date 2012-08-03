//
//  main.m
//  ExampleObjectiveC02
//
//  Created by Silvio Fragnani on 27/09/11.
//  Copyright 2011   . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SerVivo.h"
#import "Animal.h"
#import "Vegetal.h"
#import "Racional.h"
#import "Irracional.h"

int main (int argc, const char * argv[])
{

	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	
	SerVivo * ser = [[SerVivo alloc] init];
	Animal * ani = [[Animal alloc] init];
	Vegetal * veg = [[Vegetal alloc] init];
	Racional * rac = [[Racional alloc] init];
	Irracional * ira = [[Irracional alloc] init];
	
	[ani dealloc];
	[veg dealloc];
	[rac dealloc];
	[ira dealloc];
	[ser dealloc];

	[pool drain];
    
	return 0;
}


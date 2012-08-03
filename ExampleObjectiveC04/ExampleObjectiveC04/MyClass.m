//
//  MyClass.m
//  ExampleObjectiveC04
//
//  Created by Silvio Fragnani on 30/09/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "MyClass.h"


@implementation MyClass

- (id)init
{
    self = [super init];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

-(id) init: (NSNumber*) _codigo: (NSString*) _nome
{
    self = [super init];
    
	if (self) {
        codigo = _codigo;
		nome = _nome;
    }
    
    return self;
}

- (void)dealloc
{
    [super dealloc];
}

-(NSNumber*) getCodigo 
{
	return codigo;
}

-(void) setCodigo: (NSNumber*) _codigo 
{
	codigo = _codigo;
}

-(NSString*) getNome 
{
	return nome;
}

-(void) setNome: (NSString*) _nome 
{
	nome = _nome;
}

@end

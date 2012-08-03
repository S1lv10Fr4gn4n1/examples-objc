//
//  Pessoa.m
//  ExampleObjectiveC01
//
//  Created by Silvio Fragnani on 26/09/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Pessoa.h"


@implementation Pessoa

-(id)init 
{
	self = [super init];
	
	if (self) {
		
	}
	
	return self;
}

-(void)dealloc 
{
	[nome dealloc];
	[dataNasc dealloc];
	[super dealloc];
}

- (void) setCodigo: (NSInteger) c;
{
	codigo = c;
}

- (NSInteger) getCodigo
{
	return codigo;
}

- (void) setNome: (NSString*) n
{
	nome = n;
}

- (NSString*) getNome
{
	return nome;
}

- (void) setDataNasc: (NSDate*) d
{
	dataNasc = d;
}

- (NSDate*) getDataNasc
{
	return dataNasc;
}
@end

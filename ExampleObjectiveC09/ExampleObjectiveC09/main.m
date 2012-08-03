//
//  main.m
//  ExampleObjectiveC09
//
//  Created by Silvio Fragnani on 04/10/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NumberConvenience.h"
#import "CategoryThing.h"

int main (int argc, const char * argv[])
{

	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	
	// CATEGORIA
	// adicionar novos metodos em classes sem recriar/ajustar ou herdar.
	
	// Bad Categorias
	// a) nao pode criar nova instancia dessa classe (categoria)
	// b) se criar um metodo com o mesmo nome, o metodo da categoria 
	//    substitue a originial
	
	// Good Categorias
	// a) dividir implementacao de classes em varios arquivos ou framework
	// b) criar referencias externas privadas para metodos
	// c) adicionar protocolos informal para o objeto
	NSMutableDictionary *dic = [NSMutableDictionary dictionary];
	[dic setObject:[@"hello" lengthAsNumber] forKey: @"hello"];
	[dic setObject:[@"silviofragnani" lengthAsNumber] forKey: @"silviofragnani"];	
	
	NSLog(@"%@", dic);
	
	
	
	CategoryThing *thing; thing = [[CategoryThing alloc] init];
	[thing setThing1: 5]; 
	[thing setThing2: 23]; 
	[thing setThing3: 42];
	NSLog (@"Things are %@", thing); [thing release];

	[pool drain];
    return 0;
}


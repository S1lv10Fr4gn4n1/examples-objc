//
//  main.m
//  ExampleObjectiveC01
//
//  Created by Silvio Fragnani on 25/09/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pessoa.h"


int main (int argc, const char * argv[])
{

	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
		
	
	// formatador de string
	//	NSString * s = [NSString stringWithFormat: @"um = %d, dois = %d", 1, 2];
	//	NSLog(@"%@ \n Tamanho: %d", s, [s length]);
	
	// comparacao entre strings equals
	//	NSString * s1 = @"Silvio";
	//	NSString * s2 = [NSString stringWithFormat: @"%s", "Silvio"];
	
	//	if ([s1 isEqualToString: s2]) {
	//		NSLog(@"SIM");
	//	} else {
	//		NSLog(@"NAO");
	//	}
	
	
	// comparando pela ordenacao obs: nao é case sensitive
	//	NSComparisonResult resultComp = [@"abcd" compare: @"fbcd"];
	//	NSLog(@"comparator: %d", resultComp);
	
	// usar options para melhorar o resultado
	//	resultComp = [@"abcd" compare: @"fbcd" options: NSCaseInsensitiveSearch];
	//	NSLog(@"comparator: %d", resultComp);

	
	Pessoa * p = [[Pessoa alloc] init];
	
	[p setCodigo: 1L];
	[p setNome: @"silvio"];
	[p setDataNasc: [NSDate new]];
	
	NSLog(@"Pessoa");
	NSLog(@"- codigo: %ld", [p getCodigo]);
	NSLog(@"- nome: %@", [p getNome]);
	NSLog(@"- dataNasc: %@", [p getDataNasc]);
	
	[p dealloc];
	
	[pool drain];
    
	return (EXIT_SUCCESS);
}


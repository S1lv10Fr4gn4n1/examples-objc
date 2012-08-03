//
//  main.m
//  ExampleObjectiveC03
//
//  Created by Silvio Fragnani on 28/09/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

	// formatador de string
	NSString * s = [NSString stringWithFormat: @"um = %d, dois = %d", 1, 2];
	NSLog(@"%@ \n Tamanho: %lu", s, [s length]);
	
	// comparacao entre strings equals
	NSString * s1 = @"Silvio";
	NSString * s2 = [NSString stringWithFormat: @"%s", "Silvio"];
	
	if ([s1 isEqualToString: s2]) {
		NSLog(@"SIM");
	} else {
		NSLog(@"NAO");
	}
	
	
	// comparando pela ordenacao obs: nao é case sensitive
	NSComparisonResult resultComp = [@"abcd" compare: @"fbcd"];
	NSLog(@"comparator: %ld", resultComp);
	
	// usar options para melhorar o resultado
	resultComp = [@"abcd" compare: @"fbcd" options: NSCaseInsensitiveSearch];
	NSLog(@"comparator: %ld", resultComp);
	
	
	// prefix, sufix, rangeOfString
	NSString * filename = @"music-file.mp3";
	
	if ([filename hasPrefix: @"music"]) {
		NSLog(@"Prefico eh 'music'");
	}
	
	if ([filename hasSuffix: @".mp3"]) {
		NSLog(@"Sufixo eh '.mp3'");
	}
	
	NSRange range = [filename rangeOfString: @"file"];
	NSLog(@"Arquivo %@, tenho em seu nome '%s', comecando na posicao %lu", filename, "file", range.location);
	
	// o NSString seria no Java o String e o NSMutableString seria o StringBuffer
	
	// NSMutableString iniciar com uma certa capacidade
	// motivo: perfomanse, ele pode aumentar depois
	NSMutableString * word;
	word = [NSMutableString stringWithCapacity: 50];
	[word appendString: @"Hello World, "];
	[word appendFormat: @"I'am %s", "Silvio"];
	NSLog(@"%@", word);
	
	
	[pool drain];
	
    return 0;
}


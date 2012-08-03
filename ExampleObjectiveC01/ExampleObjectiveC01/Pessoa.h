//
//  Pessoa.h
//  ExampleObjectiveC01
//
//  Created by Silvio Fragnani on 26/09/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Pessoa : NSObject
{
	@private
	NSInteger codigo;
	NSString * nome; 
	NSDate * dataNasc;
}

- (void) setCodigo: (NSInteger) c;
- (NSInteger) getCodigo;

- (void) setNome: (NSString*) n;
- (NSString*) getNome;

- (void) setDataNasc: (NSDate*) d;
- (NSDate*) getDataNasc;

@end

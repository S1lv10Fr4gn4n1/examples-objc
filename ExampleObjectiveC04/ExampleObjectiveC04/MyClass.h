//
//  MyClass.h
//  ExampleObjectiveC04
//
//  Created by Silvio Fragnani on 30/09/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface MyClass : NSObject {
@private
    NSNumber * codigo;
	NSString * nome;
}

-(id) init: (NSNumber*) _codigo: (NSString*) _nome;
-(NSNumber*) getCodigo;
-(void) setCodigo: (NSNumber*) _codigo;
-(NSString*) getNome;
-(void) setNome: (NSString*) _nome;

@end

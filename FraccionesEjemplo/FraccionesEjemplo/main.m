//
//  main.m
//  FraccionesEjemplo
//
//  Created by IOS 5 on 21/11/12.
//  Copyright (c) 2012 IOS 5. All rights reserved.
//

#import <Foundation/Foundation.h>

//seccion @interface

@interface Fraccion  : NSObject{

    int numerador,denominador;
}

-(void) imprimir;
-(void) setnumerador: (int) n;
-(void) setdenominador: (int) d;

@end

//seccion de implementacion
@implementation Fraccion
-(void)imprimir{
    float decimales;
    decimales=(float) numerador/denominador;
    NSLog(@"%2f",decimales);
    NSLog(@"%i/%i",numerador,denominador);
}

-(void) setnumerador:(int)n{
    numerador=n;
}

-(void)setdenominador:(int)d{
    denominador=d;
}
@end

//seccion del programa

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Fraccion *miFraccion;
        
        //crear una instancia de la fraccion
        miFraccion=[Fraccion alloc];
        miFraccion=[miFraccion init];
        
        //asignacion de valores de la fraccion
        [miFraccion setnumerador:5];
        [miFraccion setdenominador:50];
        
        //resultado
        NSLog(@"El resultado es:");
        [miFraccion imprimir];
    }
    return 0;
}
































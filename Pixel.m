//
//  Pixel.m
//  Prueba
//
//  Created by user11394 on 4/8/14.
//  Copyright (c) 2014 Alex. All rights reserved.
//

#import "Pixel.h"
#import <Foundation/Foundation.h>//podemos incluir tambien esta cabecera como en pixel.h, al ser import no da error.

@implementation Pixel
//v2 acceso a variables de instancia usando propiedades
@synthesize x=posX, y=posY;

//Declaraciones de metodos
- (void) situarEnOrigen{
    posX=0;
    posY=0;
}
- (void) moverHorizontalmente: (int) posicion{
    posX+=posicion;
}
- (void) moverHorizontalmente:(int)posicionX yVerticalmente: (int)posicionY{
    posX+=posicionX;
    posY+=posicionY;
}
- (BOOL) estaFueraDeLosLimites{
    return (posX>300)||(posY>300)||(posX<0)||(posY<0);
}
//getters y setters,tienen el mismo nombre que el método para poder usar la notacion de punto
  //v1 acceso a variables de instancia
     //- (int) posX{
         //return posX;
     //}
//podemos personalizar el nombre del setter
- (void) setPosX: (int) valor{
    posX=valor;
}
    //- (int) posY{
    //    return posY;
    //}
    //- (void) setPosY: (int) valor{
    //    posY=valor;
    //}

//***********************************************UNIDAD 2: Punto 3 Gestión de Memoria en IOS
//- (id)init{
//    [self initConPosicion:0 yPosY:0];
//}

//- (id) initConPosicion:(int)posX yPosY:(int)posY{
//    [self initConPosicion:posX yPosY:posY yColor:[[Color alloc]init];//
//}
//- (id)initConPosicion:(int)posX yPosY:(int)posY yColor:(Color) color{
        //Inicializacion verdadera de las variables de instancia
//}

@end

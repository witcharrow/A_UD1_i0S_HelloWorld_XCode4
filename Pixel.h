//
//  Pixel.h
//  Prueba
//
//  Created by user11394 on 4/8/14.
//  Copyright (c) 2014 Alex. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Pixel : NSObject{

    //variables de instancia, las declaramos protected para que pueda usarlas PixelInvertido
    @protected int posX;
    @protected int posY;
}


//Declaraciones de metodos
- (void) situarEnOrigen;
- (void) moverHorizontalmente: (int) posicion;
- (void) moverHorizontalmente:(int)posicionX yVerticalmente: (int)posicionY;

//getters y setters,tienen el mismo nombre que el método para poder usar la notacion de punto
  //v1 acceso a variables de instancia
      //- (int) posX;
      //- (void) setPosX: (int) valor;
      //- (int) posY;
      //- (void) setPosY: (int) valor;
      //- (BOOL) estaFueraDeLosLimites;
  //v2 acceso a variables de instancia usando propiedades, pueden tener nombre diferente a las variables, lo cual debe indicarse en el synthesize de la implementacion
@property (readonly)int x;
//@property int y;
//la anterior linea puede ser nombrada asi
@property (getter=leePosY,setter=establecePosY:)int y;
@property (readonly) BOOL estaFueraDeLosLimites;
//***********************************************UNIDAD 2: Punto 3 Gestión de Memoria en IOS
//- (id)init;
//- (id) initConPosicion:(int)posX yPosY:(int)posY;
//- (id)initConPosicion:(int)posX yPosY:(int)posY yColor:(Color) color;
@end

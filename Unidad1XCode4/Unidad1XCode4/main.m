//
//  main.m
//  Unidad1XCode4
//
//  Created by user11394 on 11/04/14.
//  Copyright (c) 2014 Alex. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "AppDelegate.h"
#import "Pixel.h"
#import "PixelInvertido.h"
#import "Clase.h"
#import <stdio.h>

int main(int argc, char * argv[]){
    //*********************************************************************primer programa: Hola Mundo
    printf("Hola Mundo\n");
    
    //*********************************************************************segundo programa: comparacion de cadenas
    NSString *cadena1 = @"hola";
    NSString *cadena2 = @"h";
    cadena2 = [cadena2 stringByAppendingString:@"ola"];
    NSLog(@"%@", cadena1);
    NSLog(@"%@", cadena2);
    if(cadena1==cadena2){
        NSLog(@"son iguales");
    }
    else{
        NSLog(@"son distintas");
        if([cadena1 isEqualToString:cadena2]){
            NSLog(@"comparacion correcta. Son iguales");
        }
        else{
            NSLog(@"comparacion correcta. Son diferentes");
        }
    }
    
    //*********************************************************************tercer programa: pixel
    Pixel *pixel = [[Pixel alloc] init];
    [pixel situarEnOrigen];
    
    NSLog(@"X: %d, Y: %d",[pixel x],[pixel leePosY]);
    [pixel moverHorizontalmente:30];
    NSLog(@"X: %d, Y: %d",[pixel x],[pixel leePosY]);
    [pixel moverHorizontalmente:10 yVerticalmente:200];
    NSLog(@"X: %d, Y: %d",[pixel x],[pixel leePosY]);
    [pixel moverHorizontalmente:10 yVerticalmente:200];
    NSLog(@"X: %d, Y: %d",[pixel x],[pixel leePosY]);
    
    if ([pixel estaFueraDeLosLimites]){
        NSLog(@"Está fuera de los limites ese pixel");
    }
    else{
        NSLog(@"El pixel esta dentro de los límites");
    }
    //solo version 4 XCode
    //[pixel release];
    
    // Seguramente esta ejecutando la aplicación usando ARC. ARC es una forma de gestión automática de la memoria (viene explicado más adelante en la documentación), donde no tiene cabida la llamada a release (de ahí el error). Si no tiene acceso a una versión de XCode más antigua no podrá probar aquello de release, autorelease... etc. Está bien que lo conozca, pues por debajo Objective-C está utilizando eso, pero en las últimas versiones de XCode por defecto todo el código es con ARC.
    
    //*********************************************************************cuarto programa: pixelInvertido
    PixelInvertido *pixelInv= [[PixelInvertido alloc]init];
    
    [pixelInv situarEnOrigenInvertido];
    //En las últimas versiones de XCode han modificado cómo se comporta el compilador respecto a ese aviso, pasando a ser un error. En realidad es mejor, pues así evita que se pueda llamar a un método que no existe. Tendría que asignar dicho pixel a una referencia PixelInvertido para que no le dé el error.
    
    NSLog(@"X: %d, Y: %d",[pixelInv x],[pixelInv leePosY]);
    //solo version 4 XCode
    [pixelInv release];
    
    //*********************************************************************quinto programa: Clase contadora de instancias
    
    Clase *c1 = [[Clase alloc]init];
    Clase *c2 = [[Clase alloc]init];
    
    printf("Instancias de la clase: %i\n", [Clase initCount]);
    
    Clase *c3 = [[Clase alloc]init];
    
    printf("Instancias de la clase: %i\n", [Clase initCount]);
    
    //*********************************************************************ejemplo de mutable
    NSMutableString *mutable = [NSMutableString string];
    [mutable appendString:@"Hola"];
    [mutable appendFormat:@", mi numero favorito es el: %d", [pixel leePosY]];
    NSLog(@"%@", mutable);
    [pixel autorelease];

    
    @autoreleasepool {
        //Pixel *pixelA = [[Pixel alloc]init];
        //[pixelA x:30];
        //pixelA.x=30;//Assigment to readonly property
        //[pixelA release];
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}



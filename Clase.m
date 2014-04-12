//
//  Clase.m
//  Prueba
//
//  Created by user11394 on 11/04/14.
//  Copyright (c) 2014 Alex. All rights reserved.
//

#import "Clase.h"

@implementation Clase

- (id) init{
    self = [super init];
    count++;
    return self;
}

+ (int) initCount{
    return count;
}
+ (void) inicializar{
    count=0;
}

@end

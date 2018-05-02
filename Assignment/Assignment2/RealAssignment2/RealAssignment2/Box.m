//
//  Box.m
//  RealAssignment2
//
//  Created by Kanata Shimomoto on 2018-04-17.
//  Copyright © 2018 Kanata Shimomoto. All rights reserved.
//

#import "Box.h"

@implementation Box

-(instancetype) initWithWidth: (float) w andHeight: (float) h andLength: (float) l {
    self = [super init];
    if (self) {
        _width = w;
        _height = h;
        _length = l;
    }
    return self;
   
}

-(float) volume {
    return _width * _height * _length;
}

-(float) ratio: (Box *) box {
    return [self volume] / [box volume];
}


@end

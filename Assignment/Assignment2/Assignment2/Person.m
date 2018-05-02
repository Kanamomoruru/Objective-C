//
//  Person.m
//  Assignment2
//
//  Created by Kanata Shimomoto on 2018-04-17.
//  Copyright © 2018 Kanata Shimomoto. All rights reserved.
//

#import "Person.h"

@implementation Person

- (id) initWith:(int) age WithName:(NSString *) name {
    self = [super init];
    if (self) {
        _age = age;
        _name = name;
    }
    return self;
}

@end

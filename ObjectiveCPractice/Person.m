//
//  Person.m
//  ObjectiveCPractice
//
//  Created by Kanata Shimomoto on 2018-04-16.
//  Copyright © 2018 Kanata Shimomoto. All rights reserved.
//

#import "Person.h"

@implementation Person {
    // private instance variable
    NSString *name;
    int age;
}

-(id)initWithName: (NSString *) name AndAge: (int) age {
    if ((self = [super init])) {
        _name = name;
        _age = age;
    }
    return self;
}

- (NSString *) getName {
    return _name;
}

- (int *) getAge {
    return _age;
}

- (void) setName: (NSString *) newName {
    _name = newName;
}

- (void) setAge: (int *) newAge {
    _age = newAge;

@end

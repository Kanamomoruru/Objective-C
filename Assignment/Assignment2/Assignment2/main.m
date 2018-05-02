//
//  main.m
//  Assignment2
//
//  Created by Kanata Shimomoto on 2018-04-17.
//  Copyright © 2018 Kanata Shimomoto. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Person *p1 = [[Person alloc] initWith:26 WithName:@"Miho"];
        int age = [p1 age]; // p1.getAge();
        NSLog(@"%@ is %d years old", [p1 name], [p1 age]);
        [p1 setName: @"Alex"];
        [p1 setAge: 21];
        NSLog(@"%@ is %d years old", [p1 name], [p1 age]);
        
    }
    return 0;
}



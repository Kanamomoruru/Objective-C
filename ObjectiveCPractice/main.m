//
//  main.m
//  ObjectiveCPractice
//
//  Created by Kanata Shimomoto on 2018-04-16.
//  Copyright © 2018 Kanata Shimomoto. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "Practice.h"
#import "Person.h"
// 1. Data Types
// 2. Variables (static type)
// 3. Flow Controls
//    - if else
//    - loop
// 4. Function(Method)
// 5. Class
int addTwo(int a, int b) {
    return a + b;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        Person *p1 = [[[Person alloc]] initWithName:@"Elif" AndAge:28];
        Person *p2 = [[[Person alloc]] initWithName:@"Haruka" AndAge:26];
        int a = [p1:getAge];
        [p2 setAge:27];
        NSLog(<#NSString * _Nonnull format, ...#>);
        NSLog(<#NSString * _Nonnull format, ...#>);
}

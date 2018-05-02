//
//  main.m
//  RealAssignment2
//
//  Created by Kanata Shimomoto on 2018-04-17.
//  Copyright © 2018 Kanata Shimomoto. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Box.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Box *box1 = [[Box alloc] initWithWidth:10 andHeight:10 andLength:10];
        Box *box2 = [[Box alloc] initWithWidth:10 andHeight:10 andLength:1];
       NSLog(@"Volume of box1 is %.2f",[box1 volume]);
       NSLog(@"Box1 can fit %.2f Box2",[box1 ratio: box2]);
    }
    return 0;
}

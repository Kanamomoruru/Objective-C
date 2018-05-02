//
//  main.m
//  Assignment7
//
//  Created by Kanata Shimomoto on 2018-04-23.
//  Copyright © 2018 Kanata Shimomoto. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"
#import "Doctor.h"
#import "prescription.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Patient *p1 = [[Patient alloc] initWithName:@"Alex" AndGender:MALE andAge:21 AndHasHealthCard:NO];
        
        Patient *p2 = [[Patient alloc] initWithName:@"Miho" AndGender:FEMALE andAge:26 AndHasHealthCard:YES];
        
        Patient *p3 = [[Patient alloc] initWithName:@"Elif" AndGender:FEMALE andAge:26 AndHasHealthCard:YES];
        
        Doctor *d1 = [[Doctor alloc] initWithName:@"Kana" AndSpeciality:@"Brain Surgeon"];
        
        
        //USER STORY
        if ([p2 visitDoctor: d1]) {
            NSLog(@"SYSTEM SUCESSFUL");
        } else {
            NSLog(@"SYSTEM FAILED");
        }
    }
    return 0;
}

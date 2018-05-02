//
//  main.m
//  Assignment13
//
//  Created by Kanata Shimomoto on 2018-05-02.
//  Copyright © 2018 Kanata Shimomoto. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+PigLatin.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *input = @"Kale Chips";
        NSString *pigLatin = [input stringByPigLatinization];
        
        NSLog(@"%@ become %@", input, pigLatin);
    }
    return 0;
}

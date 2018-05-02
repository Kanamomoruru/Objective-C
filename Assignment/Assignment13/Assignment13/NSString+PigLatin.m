//
//  NSString+PigLatin.m
//  Assignment13
//
//  Created by Kanata Shimomoto on 2018-05-02.
//  Copyright © 2018 Kanata Shimomoto. All rights reserved.
//

#import "NSString+PigLatin.h"

@implementation NSString (PigLatin)

-(NSString *) stringByPigLatinization {
    NSSet *vowels = [NSCharacterSet characterSetWithCharactersInString:@"aeiouAEIOU"];
    NSArray *clusters = @[@"sc", @"ng", @"ch", @"ck", @"gh",
                          @"ph", @"rh", @"sh", @"th", @"wh",
                          @"zh", @"wr", @"kn"];
    
    NSMutableString *pigLatinized = [NSMutableString new];
    NSArray* words = [self componentsSeparatedByString:@" "];
    for (NSString *word in words) {
        if ([[clusters containsObject:[word substringToIndex:2] lowercaseString]]) {
            NSString *pig = [NSString stringWithFormat:@"%@%@ay",
                             [word substringFromIndex:2],
                             [word substringToIndex:2]];
            [pigLatinized addObject:[[pig lowercaseString] capitalizedString]];
        } else if ([vowels characterIsMember: [word characterAtIndex:0]]) {
            NSString *pig = [NSString stringWithFormat:@"%@%@ay",
                             [word substringFromIndex:1],
                             [word characterAtIndex:0]];
            
            [pigLatinized addObject:[[pig lowercaseString] capitalizedString]];
        
        } else {
            NSString *pig = [NSString stringWithFormat:@"%@%@ay", word];
            [pigLatinized addObject: [[pig lowercaseString] capitalizedString]];
            
        }
    }
    
    return [pigLatinized componentsJoinedByString:@" "];
}

@end

//- sc
//- ng
//- ch
//- ck
//- gh
//- ph
//- rh
//- sh
//- th
//- wh
//- zh
//- wr
//- kn


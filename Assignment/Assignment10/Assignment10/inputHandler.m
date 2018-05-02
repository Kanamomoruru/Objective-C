//
//  inputHandler.m
//  Assignment3
//
//  Created by Kanata Shimomoto on 2018-04-17.
//  Copyright © 2018 Kanata Shimomoto. All rights reserved.
//

#import "inputHandler.h"

@implementation inputHandler

+ (NSString *) getUserInput: (NSString *) prompt {
    char inputChars[255];
    NSLog(@"%@", prompt);
    fgets(inputChars, 255, stdin);
    NSString *inputString = [NSString stringWithUTF8String:inputChars];
    NSCharacterSet *removeCharSet = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    NSString *trimmedString = [inputString stringByTrimmingCharactersInSet: removeCharSet];
    return trimmedString;
}
@end

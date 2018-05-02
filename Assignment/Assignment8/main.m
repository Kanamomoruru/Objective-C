//
//  main.m
//  Assignment8
//
//  Created by Lucas Craveiro on 2018-04-24.
//  Copyright © 2018 Lucas Craveiro. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "Pizza.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSLog(@"Pick your toppins");
        Kitchen *restaurantKitchen = [Kitchen new];
        
        while (TRUE) {
            NSLog(@">");
            char inputChars[255];
            fgets(inputChars, 255, stdin);
            NSString *inputString = [NSString stringWithUTF8String:inputChars];
            NSCharacterSet *removeCharSet = [NSCharacterSet whitespaceAndNewlineCharacterSet];
            NSLog(@"Input was %@", inputString);
            
            NSArray *commandWords = [inputString componentsSeparatedByString:@""];
            NSString *size = commandWords[0];
            NSArray *toppins = [commandWords subarrayWithRange:NSMakeRange(1, [commandWords count]-1)];
            
            Pizza *pizza;
            if ([Pizza getPizzaSize:size] && [toppins containsObject:@"pepperoni"]) {
                pizza = [Pizza largePepperoni];
            }else if ([toppins containsObject:@"beef"] || [toppins containsObject:@"chicken"] || [toppins containsObject:@"pork"] ){
                pizza = [Pizza meatLoversWithSize:[Pizza getPizzaSize:size]];
                
            }else{
                pizza = [restaurantKitchen makePizzaWithSize:[Pizza getPizzaSize:size] toppings:toppins];
            }
            NSLog(@"%@", pizza);
            
            
        }
      
    }
    return 0;
}

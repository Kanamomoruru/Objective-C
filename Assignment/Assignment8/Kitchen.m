//
//  Kitchen.m
//  Assignment8
//
//  Created by Lucas Craveiro on 2018-04-24.
//  Copyright © 2018 Kanata Shimomoto. All rights reserved.
//

#import "Kitchen.h"


@implementation Kitchen

- (Pizza *) makePizzaWithSize:(PizzaSize) size toppings:(NSArray *) toppings
{
    return [[Pizza alloc] initWithSize:size AndToppings:toppings];
}



@end

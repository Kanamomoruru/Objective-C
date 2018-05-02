//
//  Kitchen.h
//  Assignment8
//
//  Created by Lucas Craveiro on 2018-04-24.
//  Copyright © 2018 Lucas Craveiro. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"



@interface Kitchen : NSObject

- (Pizza *) makePizzaWithSize:(PizzaSize) size toppings:(NSArray *) toppings;


@end

//
//  Server.h
//  Foodtruck
//
//  Created by Kanata Shimomoto on 2018-04-25.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FoodTruck.h"

@interface Server : NSObject

-(double)foodTruck:(FoodTruck *)truck priceForFood:(NSString *)food;

@end

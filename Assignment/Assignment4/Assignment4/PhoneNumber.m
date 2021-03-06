//
//  PhoneNumber.m
//  Assignment4
//
//  Created by Kanata Shimomoto on 2018-04-18.
//  Copyright © 2018 Kanata Shimomoto. All rights reserved.
//

#import "PhoneNumber.h"

@implementation PhoneNumber
- (instancetype)initWithLabel:(NSString *) label AndDigits:(NSString *) digits
{
    self = [super init];
    if (self) {
        _label = label;
        _digits = digits;
    }
    return self;
}
@end

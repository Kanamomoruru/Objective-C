//
//  Contact.m
//  Assignment4
//
//  Created by Kanata Shimomoto on 2018-04-18.
//  Copyright © 2018 Kanata Shimomoto. All rights reserved.
//

#import "Contact.h"

@implementation Contact
- (instancetype)initWithName:(NSString *) name AndEmail:(NSString *) email{
    self = [super init];
    if (self) {
        _name = name;
        _email = email;
    }
    return self;
}

-(BOOL) findContact: (NSString *) keyword {
    
}

@end

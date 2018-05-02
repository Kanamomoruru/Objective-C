//
//  ContactList.m
//  Assignment4
//
//  Created by Kanata Shimomoto on 2018-04-18.
//  Copyright © 2018 Kanata Shimomoto. All rights reserved.
//

#import "ContactList.h"
@class Contact;
@implementation ContactList
- (instancetype)init
{
    self = [super init];
    if (self) {
        _contact = [[NSMutableArray alloc] init];
    }
    return self;
}
-(void)addContact:(Contact *) newContact {
    [_contact addObject: newContact];
}
- (BOOL) shouldHaveContactWith: (NSString *) keyword {
    NSInteger index = 0;
    for (Contact *contact in _contact) {
        if ([[contact name] isEqualToString:keyword] || [[contact email] isEqualToString: keyword]) {
            return YES;
        }
    }
    return NO;
}
- (Contact *) findContact: (NSString *) keyword{
    for (Contact *contact in _contact) {
        if ([[contact name] isEqualToString:keyword] || [[contact email] isEqualToString: keyword]) {
            return contact;
        }
    }
    return Nil;
}
@end


Add CommentCollapse

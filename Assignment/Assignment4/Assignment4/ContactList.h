//
//  ContactList.h
//  Assignment4
//
//  Created by Kanata Shimomoto on 2018-04-18.
//  Copyright © 2018 Kanata Shimomoto. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ContactList.h"
@class Contact;

@interface ContactList : NSObject

@property (nonatomic, strong) NSMutableArray *contact;
-(void)addContact:(Contact *)newContact;
-(BOOL) shouldHaveContactWith: (NSString *) keyword;
-(BOOL) findContact: (NSString *) keyword;

@end

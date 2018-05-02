//
//  main.m
//  Assignment4
//
//  Created by Kanata Shimomoto on 2018-04-18.
//  Copyright © 2018 Kanata Shimomoto. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "inputHandler.h"
#import "Contact.h"
#import "ContactList.h"
#include "PhoneNumber.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *menu = @"\nWhat would you like to do next?\nnew - Create a new contact\nlist - List all contacts\nshow i - show the contact at index i in details\nquit - Exit Application\n>>> ";
        ContactList *list = [[ContactList alloc] init];
        NSMutableArray *commands = [NSMutableArray array];
        
        // REPL : Read Evaluate Print Loop
        BOOL isOn = YES;
        while (isOn) {
            NSString *input = [inputHandler getUserInputWithPrompt: menu];
            NSArray *splitted = [input componentsSeparatedByString:@" "];
            [commands addObject:input];
            if ([input isEqualToString:@"quit"]) {
                isOn = NO;
                break;
            } else if ([input isEqualToString:@"new"]) {
                NSString *name = [inputHandler getUserInputWithPrompt: @"\nEnter the name: "];
                NSString *email = [inputHandler getUserInputWithPrompt: @"\nEnter the email: "];
                NSString *label = [inputHandler getUserInputWithPrompt: @"\nWhat kind of phone number (work, home, mobile, etc): "];
                NSString *number = [inputHandler getUserInputWithPrompt: @"\nEnter the email phone number: "];
                
                BOOL nameExists = [list shouldHaveContactWith:name];
                BOOL emailExists = [list shouldHaveContactWith:email];
                if (!nameExists && !emailExists) {
                    Contact *newContact = [[Contact alloc] initWithName: name AndEmail: email];
                    PhoneNumber *pnumber = [[PhoneNumber alloc] initWithLabel:label AndDigits:number];
                    [newContact addPhoneNumber: pnumber];
                    while (YES) {
                        NSString *ans = [inputHandler getUserInputWithPrompt: @"More phone number? (y/n) "];
                        if ([ans isEqualToString:@"y"]){
                            NSString *label = [inputHandler getUserInputWithPrompt: @"\nWhat kind of phone number (work, home, mobile, etc): "];
                            NSString *number = [inputHandler getUserInputWithPrompt: @"\nEnter the email phone number: "];
                            PhoneNumber *pnumber = [[PhoneNumber alloc] initWithLabel:label AndDigits:number];
                            [newContact addPhoneNumber: pnumber];
                        } else {
                            break;
                        }
                    }
                    [list addContact: newContact];
                } else {
                    NSLog(@"Contact info already exists...");
                }
                
            } else if ([input isEqualToString:@"list"]) {
                NSInteger index = 0;
                NSMutableArray *contacts = [list contact];
                for (Contact *contact in contacts) {
                    NSLog(@"%ld: <%@> (%@)", index, [contact name], [contact email]);
                    index++;
                }
            } else if ([[splitted objectAtIndex:0] isEqualToString: @"show"]) {
                NSString *index = [splitted objectAtIndex: 1];
                NSMutableArray *contacts = [list contact];
                NSInteger i = [index integerValue];
                if (i >= [contacts count] || i < 0) {
                    NSLog(@"Not found");
                } else {
                    Contact *contact = [contacts objectAtIndex: i];
                    NSLog(@"%@: <%@> (%@)", index, [contact name], [contact email]);
                }
                
            } else if ([[splitted objectAtIndex:0] isEqualToString:@"find"]) {
                NSString *keyword = [splitted objectAtIndex: 1];
                Contact *found = [list findContact:keyword];
                if (found != nil) {
                    NSLog(@"<%@> (%@)", [found name], [found email]);
                } else {
                    NSLog(@"No match");
                }
                
            } else if ([input isEqualToString:@"history"]) {
                for(int i = (int) commands.count - 3; i < commands.count; i++) {
                    NSLog(@"%@", [commands objectAtIndex: i]);
                }
            }
        }
        
    }
    return 0;
}

//
//  Doctor.m
//  Assignment7
//
//  Created by Kanata Shimomoto on 2018-04-23.
//  Copyright © 2018 Kanata Shimomoto. All rights reserved.
//

#import "Doctor.h"

@implementation Doctor

- (instancetype)initWithName:(NSString *) name AndSpeciality:(NSString *) specialization
{
    self = [super init];
    if (self) {
        _name = name;
        _specialization = specialization;
        _patientList = [NSMutableArray array];
    }
    return self;
}

-(BOOL) addPatientIfPatientHasValidHealthCard: (Patient *) pat {
    NSLog(@"Let me see your Healthcard");
    if([pat hasHealthCard]) {
        [_patientList addObject:pat];
        NSLog(@"You have a valid healthcard so now you are my patient");
        return YES;
    } else {
        NSLog(@"You do not have a valid healthcard. Please come back with a valid health card");
        return NO;
    }
    
    return [pat hasHealthCard];
}

@end

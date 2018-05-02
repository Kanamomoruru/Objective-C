//
//  Patient.m
//  Assignment7
//
//  Created by Kanata Shimomoto on 2018-04-23.
//  Copyright © 2018 Kanata Shimomoto. All rights reserved.
//

#import "Patient.h"
#import "Doctor.h"

@implementation Patient
- (instancetype)initWithName:(NSString *) name AndGender:(Gender) gender andAge:(NSInteger) age AndHasHealthCard:(BOOL) healthCard
{
    self = [super init];
    if (self) {
        _name = name;
        _gender = gender;
        _age = age;
        _hasHealthCard = healthCard;
    }
    return self;
}

-(BOOL) visitDoctor:(Doctor *) doc {
    NSLog(@"Hello Dr. %@, My name is %@. I need your help!", [doc name], _name);
    
    return [doc addPatientIfPatientHasValidHealthCard: self];

}
@end

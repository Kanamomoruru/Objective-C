//
//  Patient.h
//  Assignment7
//
//  Created by Kanata Shimomoto on 2018-04-23.
//  Copyright © 2018 Kanata Shimomoto. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Doctor;

typedef enum : NSUInteger {
    MALE,
    FEMALE
    
} Gender;


@interface Patient : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) NSInteger age;
@property (nonatomic, assign) Gender gender;
@property (nonatomic, assign) BOOL hasHealthCard;

- (instancetype)initWithName:(NSString *) name AndGender:(Gender) gender andAge:(NSInteger) age AndHasHealthCard:(BOOL) healthCard;


- (BOOL) visitDoctor: (Doctor *) doc;

@end

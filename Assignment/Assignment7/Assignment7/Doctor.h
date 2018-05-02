//
//  Doctor.h
//  Assignment7
//
//  Created by Kanata Shimomoto on 2018-04-23.
//  Copyright © 2018 Kanata Shimomoto. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"

@interface Doctor : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *specialization;
@property (nonatomic, strong) NSMutableArray *patientList;
@property (nonatomic, strong) NSString * requestMedication;


- (instancetype)initWithName:(NSString *) name AndSpeciality:(NSString *) specialization;

-(BOOL) addPatientIfPatientHasValidHealthCard: (Patient *) pat;

@end

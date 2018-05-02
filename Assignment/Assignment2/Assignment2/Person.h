//
//  Person.h
//  Assignment2
//
//  Created by Kanata Shimomoto on 2018-04-17.
//  Copyright © 2018 Kanata Shimomoto. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) int age;

- (id) initWith:(int) age WithName:(NSString *) name;


@end

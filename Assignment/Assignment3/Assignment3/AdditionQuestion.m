//
//  AdditionQuestion.m
//  Assignment3
//
//  Created by Kanata Shimomoto on 2018-04-17.
//  Copyright © 2018 Kanata Shimomoto. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion
- (instancetype)init {
    self = [super init];
    if (self) {
        // get 2 random numbers
        // (0 + 90) + 10 == 10 ~ 99
        int num1 = arc4random_uniform(91) + 10;
        int num2 = arc4random_uniform(91) + 10;
        // @"num1 + num2"
        _question = [NSString stringWithFormat:@"%d + %d = ", num1, num2];
        _answer = num1 + num2;
    }
    return self;
}

@end

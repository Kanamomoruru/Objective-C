//
//  AdditionQuestion.m
//  Assignment3
//
//  Created by Kanata Shimomoto on 2018-04-17.
//  Copyright © 2018 Kanata Shimomoto. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion
- (instancetype)init
{
    self = [super init];
    if (self) {
        [self generateQuestion];
    }
    return self;
}

- (void) generateQuestion {
    [self setQuestion:[NSString stringWithFormat:@"%ld + %ld = ", [super leftValue], [super rightValue]]];
    [self setAnswer:([super leftValue] + [super rightValue])];
}
@end

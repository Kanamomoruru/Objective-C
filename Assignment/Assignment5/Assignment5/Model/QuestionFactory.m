//
//  QuestionFactory.m
//  Assignment5
//
//  Created by Kanata Shimomoto on 2018-04-19.
//  Copyright © 2018 Kanata Shimomoto. All rights reserved.
//

#import "QuestionFactory.h"

@implementation QuestionFactory
- (instancetype)init
{
    self = [super init];
    if (self) {
         _questionTypes = @[@"AdditionQuestion",
                            @"SubstractQuestion",
                            @"MultiplicationQuestion",
                            @"DivisionQuestion"];
        
    }
    return self;
}

- (Question *) generateRandomQuestion {
    int index = arc4random_uniform(4);
    NSString *questionType = [_questionTypes objectAtIndex:index];
    Question *q =  [[NSClassFromString(questionType) alloc]init];
    return q;
    
    
   
}

@end

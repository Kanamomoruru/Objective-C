//
//  Question.m
//  Assignment5
//
//  Created by Kanata Shimomoto on 2018-04-19.
//  Copyright © 2018 Kanata Shimomoto. All rights reserved.
//

#import "Question.h"
#import "AdditionQuestion.h"

@implementation Question

- (instancetype)init {
    self = [super init];
    if (self) {
        // get 2 random numbers
        // (0 + 90) + 10 == 10 ~ 99
        _leftValue = arc4random_uniform(91) + 10;
        _rightValue = arc4random_uniform(91) + 10;
        _startTime = [NSDate date];
    }
    return self;
}

- (void) generateQuestion {
}

-(NSInteger) answer {
    _endTime = [NSDate date];
    return _answer;
}

-(NSTimeInterval) answerTime {
    NSTimeInterval interval =  [_endTime timeIntervalSinceDate:_startTime];
    // interval (in secs)
    return interval;
}




@end

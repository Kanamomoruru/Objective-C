//
//  QuestionManager.m
//  Assignment5
//
//  Created by Kanata Shimomoto on 2018-04-19.
//  Copyright © 2018 Kanata Shimomoto. All rights reserved.
//

#import "QuestionManager.h"
#import "Question.h"

@implementation QuestionManager;
-(instancetype)init
{
    self = [super init];
    if (self) {
        _questions = [NSMutableArray array]; // [NSMutableArray alloc]
        
    }
    return self;
}
+ (QuestionManager *) manager {
    return [[QuestionManager alloc]init];
}

-(void) addQuestion: (Question *) question {
    [_questions addObject: question];
}

-(NSString *) timeOutput {
    Question *lastQ = [_questions lastObject];
    Question *firstQ = [_questions firstObject];
    NSTimeInterval total = [lastQ.endTime timeIntervalSinceDate:firstQ.startTime];
    NSUInteger numQ = [_questions count];
    return [NSString stringWithFormat:@"total time: %.2fs, average time: %2fs", total, total/numQ];
}

@end


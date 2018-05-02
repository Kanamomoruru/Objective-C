//
//  Question.h
//  Assignment5
//
//  Created by Kanata Shimomoto on 2018-04-19.
//  Copyright © 2018 Kanata Shimomoto. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject

@property (nonatomic, strong) NSString *question;
@property (nonatomic, assign) NSInteger answer;
@property (nonatomic, assign) NSInteger leftValue;
@property (nonatomic, assign) NSInteger rightValue;
@property (nonatomic, strong) NSDate *startTime;
@property (nonatomic, strong) NSDate *endTime;

- (instancetype)init;
-(NSInteger) answer;
-(NSTimeInterval) answerTime;
- (void) generateQuestion;

@end

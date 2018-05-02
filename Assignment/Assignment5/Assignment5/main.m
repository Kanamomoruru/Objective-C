//
//  main.m
//  Assignment3
//
//  Created by Kanata Shimomoto on 2018-04-17.
//  Copyright © 2018 Kanata Shimomoto. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import "inputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL gameOn = YES;
        NSLog(@"MATHS!!");
        ScoreKeeper *sk = [[ScoreKeeper alloc] init];
        QuestionManager *qm = [[QuestionManager alloc] init];
        QuestionFactory *qf = [[QuestionFactory alloc] init];
        
        while (YES) {
            Question *q1 = [qf generateRandomQuestion];
            NSString *input = [inputHandler getUserInput: [q1 question]];
            
            if ([input isEqualToString:@"quit"]) {
                gameOn = NO;
                break;
            }
            NSString* answer = [NSString stringWithFormat:@"%ld", [q1 answer]];
            [qm addQuestion:q1];
            
            if ([input isEqualToString: answer]) {
                NSLog(@"Right!");
                [sk setRights: [sk rights] + 1];
            } else {
                NSLog(@"Wrong!");
                [sk setWrongs: [sk wrongs] + 1];
            }
        }
        [sk displayResult];
        NSLog(@"%@", [qm timeOutput]);
    }
    return 0;
}

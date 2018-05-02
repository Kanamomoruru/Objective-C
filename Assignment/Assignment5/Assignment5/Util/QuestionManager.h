//
//  QuestionManager.h
//  Assignment5
//
//  Created by Kanata Shimomoto on 2018-04-19.
//  Copyright © 2018 Kanata Shimomoto. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

@interface QuestionManager : NSObject

@property (nonatomic, strong) NSMutableArray *questions;

+(QuestionManager *) manager;
-(void) addQuestion: (Question *) question;
-(NSString *) timeOutput;

@end

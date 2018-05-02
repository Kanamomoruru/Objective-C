//
//  QuestionFactory.h
//  Assignment5
//
//  Created by Kanata Shimomoto on 2018-04-19.
//  Copyright © 2018 Kanata Shimomoto. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Question;

@interface QuestionFactory : NSObject

@property (nonatomic, strong) NSArray *questionTypes;
- (Question *) generateRandomQuestion;

@end

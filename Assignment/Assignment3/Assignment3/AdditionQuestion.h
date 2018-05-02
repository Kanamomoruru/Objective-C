//
//  AdditionQuestion.h
//  Assignment3
//
//  Created by Kanata Shimomoto on 2018-04-17.
//  Copyright © 2018 Kanata Shimomoto. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AdditionQuestion : NSObject

@property (nonatomic, strong)  NSString *question;
@property (nonatomic, assign) NSInteger answer;
- (instancetype)init;
@end

//
//  ScoreKeeper.h
//  Assignment3
//
//  Created by Kanata Shimomoto on 2018-04-17.
//  Copyright © 2018 Kanata Shimomoto. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject

@property (nonatomic, assign) NSInteger rights;
@property (nonatomic, assign) NSInteger wrongs;
-(instancetype)init;
-(void) displayResult;

@end

//
//  Box.h
//  RealAssignment2
//
//  Created by Kanata Shimomoto on 2018-04-17.
//  Copyright © 2018 Kanata Shimomoto. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Box : NSObject
@property (nonatomic, assign) float height;
@property (nonatomic, assign) float width;
@property (nonatomic, assign) float length;

-(instancetype) initWithWidth: (float) w andHeight: (float) h andLength: (float) l;
-(float) volume;
-(float) ratio Box1;
@end

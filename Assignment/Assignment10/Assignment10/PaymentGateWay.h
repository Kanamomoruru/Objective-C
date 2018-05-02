//
//  PaymentGateWay.h
//  Assignment10
//
//  Created by Kanata Shimomoto on 2018-04-26.
//  Copyright © 2018 Kanata Shimomoto. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol  PaymentDelegate


- (void) processPaymentAmount: (NSInteger) amount ;

@end

@interface PaymentGateWay : NSObject

@property (nonatomic, weak) id<PaymentDelegate> paymentDelegate;

- (void) processPaymentAmount: (NSInteger) amount ;

@end

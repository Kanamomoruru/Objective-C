//
//  main.m
//  Assignment10
//
//  Created by Kanata Shimomoto on 2018-04-26.
//  Copyright © 2018 Kanata Shimomoto. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "inputHandler.h"
#import "PaymentGateWay.h"
#import "PaypalPaymentService.h"
#import "AmazonPaymentService.h"
#import "StripePaymentService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int doller = arc4random_uniform(901) + 100;
        NSLog(@"Thank you blah blah...", doller);
        
        NSInteger method = [[inputhandler getUserInputWithPrompt:@">>> "] integerValue];
                            
        swtch(method) {
                            case 1:
            [getway setPaymentDelegate: [PaypalPaymentService new]];
            getway.PaymentDelegate = [PaypalPaymentService new];
                                break;
                            case 2:
                                 getway.PaymentDelegate = [AmazonPaymentService new];
                                break;
                            case 3:
                                 getway.PaymentDelegate = [StripePaymentService new];
                                break;
                            default:
                                break;
                            }
        
    }
    return 0;
}

//
//  PaymentGateway.m
//  Payments
//
//  Created by Alex Quigley on 2017-11-03.
//  Copyright © 2017 Alex Quigley. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway

-(void) processPaymentAmount:(NSInteger)amount {
    if ([self.delegate canProcessPayment]) {
    [self.delegate processPaymentAmount:amount];
        
    } else {
        NSLog(@"Sorry, payment can not be processed");
    }
}



@end

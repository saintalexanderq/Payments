//
//  PaymentGateway.h
//  Payments
//
//  Created by Alex Quigley on 2017-11-03.
//  Copyright © 2017 Alex Quigley. All rights reserved.
//

#import <Foundation/Foundation.h>
@class PaymentGateway;

@protocol PaymentDelegate <NSObject>

-(void)processPaymentAmount:(NSInteger)amount;
-(BOOL) canProcessPayment;

@end


@interface PaymentGateway : NSObject

-(void)processPaymentAmount:(NSInteger)amount;
@property (nonatomic, strong) id<PaymentDelegate> delegate;

@end

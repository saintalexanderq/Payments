//
//  ApplyPayment.m
//  Payments
//
//  Created by Alex Quigley on 2017-11-03.
//  Copyright © 2017 Alex Quigley. All rights reserved.
//

#import "ApplyPayment.h"

@implementation ApplyPayment 

-(void)processPaymentAmount:(NSInteger)amount {
    NSLog(@"Apple amount is of $%ld", amount);
}

-(BOOL)canProcessPayment {
    int yesOrNo = arc4random_uniform(2);
    if (yesOrNo == 0) {
        return NO;
    } else {
        return YES;
    }
}

@end



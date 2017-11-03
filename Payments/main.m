//
//  main.m
//  Payments
//
//  Created by Alex Quigley on 2017-11-03.
//  Copyright © 2017 Alex Quigley. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"
#import "PaypalPaymentService.h"
#import "StripePaymentService.h"
#import "AmazonPaymentService.h"
#import "ApplyPayment.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        PaymentGateway *payment = [[PaymentGateway alloc]init];

        
        while (true) {
        int randomDollar = arc4random_uniform(901) + 100;
        
            NSLog(@"Thank you for shopping at Acme.com Your total today is $%d Please select your payment method: 1: Paypal, 2: Stripe, 3: Amazon, 4: Apple", randomDollar);
        
        //        USE FGETS FOR INPUT FROM USER (WHAT TYPE PAYMENT) // parse user input
        
        char inputChars[255];
        //        printf("What would you like to pay with? 1 for Paypal, 2 for Stripe, 3 for Amazon\n");
        fgets(inputChars, 255, stdin);
        NSString *inputString = [[NSString stringWithUTF8String:inputChars] stringByReplacingOccurrencesOfString:@"\n" withString:@""];
        int userSelection = [inputString intValue];
        NSLog(@"You chose option %d.", userSelection);
        
        
        
        // ---------------------------------- part 2
        
        
        switch (userSelection) {
            case 1:{
                
                PaypalPaymentService *paypalPayment = [[PaypalPaymentService alloc]init];
                payment.delegate = paypalPayment;
            }
                
                break;
            case 2: {
                StripePaymentService *stripePayment = [[StripePaymentService alloc] init];
                payment.delegate = stripePayment;
            }
                break;
            case 3: {
                AmazonPaymentService *amazonPayment = [[AmazonPaymentService alloc]init];
                payment.delegate = amazonPayment;
            }
                break;
            case 4: {
                ApplyPayment *applyPayment = [[ApplyPayment alloc]init];
                payment.delegate = applyPayment;
            }
                
            default:
                break;
        }
        
            [payment processPaymentAmount:randomDollar];

        
    
        
        
        
        
        
        
        
        
        
    }
        
    }
    return 0;
}

//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "Pizza.h"
#import "ManagerHatingAnchovies.h"
#import "ManagerBeingCheery.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSLog(@"Please pick your pizza size and toppings:");
        
        Kitchen *restaurantKitchen = [Kitchen new];
        ManagerHatingAnchovies *Nick = [ManagerHatingAnchovies new];
        ManagerBeingCheery *Bob = [ManagerBeingCheery new];
        
        
        while (TRUE) {
            // Loop forever
            
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSLog(@"Input was %@", inputString);
            
            // Take the first word of the command as the size, and the rest as the toppings
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            NSString *keyword = commandWords[0];
            
            NSLog(@"Who is the manager?");
            NSLog(@"> ");
            fgets (str, 100, stdin);
            NSString *inputStringForManager = [[NSString alloc] initWithUTF8String:str];
            inputStringForManager = [inputStringForManager stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            NSLog(@"The manager is %@.", inputStringForManager);
            
            Pizza *pizza;
            if ([keyword isEqualToString:@"pepperoni"]) {
                pizza = [Pizza largePepperoni];
            }
            else {
                // And then send some message to the kitchen...
                PizzaSize size = [Pizza sizeFromString:keyword];
                NSArray *toppings = [commandWords subarrayWithRange:NSMakeRange(1, commandWords.count - 1)];
                
                if ([inputStringForManager isEqualToString:@"Nick"]) {
                    restaurantKitchen.delegate = Nick;
                    pizza = [restaurantKitchen makePizzaWithSize:size toppings:toppings];
                } else if ([inputStringForManager isEqualToString:@"Bob"]) {
                    restaurantKitchen.delegate = Bob;
                    pizza = [restaurantKitchen makePizzaWithSize:size toppings:toppings];
                } else {
                    pizza = [[Pizza alloc] initWithSize:size toppings:toppings];
                }
            }
            
            if (pizza) {
                NSLog(@"Here is a %@.", pizza);
            } else {
                NSLog(@"%@ refused to make this pizza.", inputStringForManager);
            }
        }
    }
    return 0;
}


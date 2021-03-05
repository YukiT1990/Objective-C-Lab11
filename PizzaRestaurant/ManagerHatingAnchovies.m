//
//  ManagerHatingAnchovies.m
//  PizzaRestaurant
//
//  Created by Yuki Tsukada on 2021/03/05.
//  Copyright © 2021 Lighthouse Labs. All rights reserved.
//

#import "ManagerHatingAnchovies.h"

@implementation ManagerHatingAnchovies

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings {
    for (NSString *topping in toppings) {
        NSString *lowercaseTopping = [topping lowercaseString];
        if ([lowercaseTopping isEqualToString:@"anchovies"]) {
            return NO;
        }
    }
    return YES;
}

- (void)kitchenDidMakePizza:(Pizza *)pizza {
    
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
    return NO;
}

@end

//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Kitchen.h"

@implementation Kitchen

- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings{
    BOOL canCreate = [_delegate kitchen:self.delegate shouldMakePizzaOfSize:size andToppings:toppings];
    BOOL shouldUpgrade;
    
    if (canCreate) {
        shouldUpgrade = [_delegate kitchenShouldUpgradeOrder:self.delegate];
        if (shouldUpgrade) {
            [_delegate kitchen:self.delegate shouldMakePizzaOfSize:large andToppings:toppings];
        }
        Pizza *newPizza = [[Pizza alloc] initWithSize:size toppings:toppings];
        [_delegate kitchenDidMakePizza:newPizza];
    }
}

@end

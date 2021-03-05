//
//  ManagerBeingCheery.m
//  PizzaRestaurant
//
//  Created by Yuki Tsukada on 2021/03/05.
//  Copyright © 2021 Lighthouse Labs. All rights reserved.
//

#import "ManagerBeingCheery.h"

@implementation ManagerBeingCheery

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings { 
    return YES;
}

- (void)kitchenDidMakePizza:(Pizza *)pizza { 
    NSLog(@"Hey, it looks yummy! I got hungry, let's take a break!");
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen { 
    return YES;
}

@end

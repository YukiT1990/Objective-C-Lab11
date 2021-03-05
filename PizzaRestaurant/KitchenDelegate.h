//
//  KitchenDelegate.h
//  PizzaRestaurant
//
//  Created by Yuki Tsukada on 2021/03/05.
//  Copyright © 2021 Lighthouse Labs. All rights reserved.
//

#ifndef KitchenDelegate_h
#define KitchenDelegate_h

#import <Foundation/Foundation.h>
#import "Pizza.h"
@class Kitchen;

@protocol KitchenDelegate <NSObject>

- (BOOL)kitchen:(Kitchen *)kitchen
shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray
*)toppings;
- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen;

- (void)kitchenDidMakePizza:(Pizza *)pizza;

@end

#endif /* KitchenDelegate_h */

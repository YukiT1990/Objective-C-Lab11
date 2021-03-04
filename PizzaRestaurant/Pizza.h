//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by Yuki Tsukada on 2021/03/02.
//  Copyright © 2021 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"

typedef enum {
    small,
    medium,
    large,
} PizzaSize;

@interface Pizza : NSObject <KitchenDelegate>;

@property PizzaSize size;
@property NSArray *toppings;

+ (instancetype) pizzaWithSize: (PizzaSize) size toppings: (NSArray *) toppings;
+ (Pizza *) largePepperoni;
+ (Pizza *) meatLoversWithSize:(PizzaSize)size;
+ (PizzaSize) sizeFromString: (NSString *) str;
- (instancetype) initWithSize: (PizzaSize) size toppings: (NSArray *) toppings;
- (PizzaSize) size;
- (NSArray *) toppings;

@end

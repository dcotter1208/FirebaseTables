//
//  Restaurant.m
//  FirebaseTables
//
//  Created by DetroitLabs on 6/1/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import "Restaurant.h"

@implementation Restaurant


- (instancetype)initWithRestaurantName:(NSString*)name address: (NSString*)address {
    self = [super init];
    if (self) {
        _name = name;
        _address = address;
    }
    return self;
}

@end

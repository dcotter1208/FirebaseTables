//
//  Restaurant.h
//  FirebaseTables
//
//  Created by DetroitLabs on 6/1/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Restaurant : NSObject
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *address;

- (instancetype)initWithRestaurantName:(NSString*)name address: (NSString*)address;

@end

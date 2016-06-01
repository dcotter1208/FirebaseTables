//
//  FirebaseRef.m
//  FirebaseTables
//
//  Created by DetroitLabs on 6/1/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import "FirebaseRef.h"


@implementation FirebaseRef

- (id)initWithURL {
    self = [super init];
    if (self) {
        _mainURL = [[Firebase alloc]initWithUrl:@"https://fbtables.firebaseio.com"];
    }
    return self;
}

-(Firebase *)firebaseRefForPath:(NSString *)endURLRef {
    
    NSString *restaurantRefString = [NSString stringWithFormat:@"%@%@", _mainURL, endURLRef];
    
    _restaurantRef = [[Firebase alloc]initWithUrl:restaurantRefString];
    
    return _restaurantRef;
}


@end

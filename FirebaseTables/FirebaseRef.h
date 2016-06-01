//
//  FirebaseRef.h
//  FirebaseTables
//
//  Created by DetroitLabs on 6/1/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Firebase/Firebase.h>

@interface FirebaseRef : NSObject

@property (strong, nonatomic) Firebase *mainURL;
@property (strong, nonatomic) Firebase *restaurantRef;

-(Firebase *)firebaseRefForPath:(NSString *)endURLRef;

-(id)initWithURL;

@end

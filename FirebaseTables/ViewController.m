//
//  ViewController.m
//  FirebaseTables
//
//  Created by DetroitLabs on 6/1/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

@end

NSMutableArray *restaurantData;
@implementation ViewController
Firebase *firebaseMainRef;

- (void)viewDidLoad {
    [super viewDidLoad];

    [self retrieveRestaurantsFromFirebase];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    return cell;
}


-(void)retrieveRestaurantsFromFirebase {
    // Get a reference to our posts
    FirebaseRef *mainRef = [[FirebaseRef alloc]initWithURL];
    Firebase *restaurantRef = [mainRef firebaseRefForPath:@"/restaurants"];
    
    // Retrieve new posts as they are added to the database
    [restaurantRef observeEventType:FEventTypeChildAdded withBlock:^(FDataSnapshot *snapshot) {
        
        NSString *name = snapshot.value[@"name"];
        NSString *address = snapshot.value[@"address"];

        Restaurant *restaurant = [[Restaurant alloc]initWithRestaurantName:name address:address];
        restaurantData = [[NSMutableArray alloc]init];
        [restaurantData addObject:restaurant];

    }];
}


@end

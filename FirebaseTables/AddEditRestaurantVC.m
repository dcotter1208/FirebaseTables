//
//  AddEditRestaurantVC.m
//  FirebaseTables
//
//  Created by DetroitLabs on 6/1/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import "AddEditRestaurantVC.h"


@interface AddEditRestaurantVC ()
@property (weak, nonatomic) IBOutlet UITextField *restaurantNameTF;
@property (weak, nonatomic) IBOutlet UITextField *restaurantAddressTF;

@end

Firebase *firebaseRef;
@implementation AddEditRestaurantVC

- (void)viewDidLoad {
    [super viewDidLoad];

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)saveRestaurantButtonPressed:(id)sender {
    [self addNewRestaurant];
    
}


- (void)addNewRestaurant {
    NSString *restaurantName = _restaurantNameTF.text;
    NSString *resturantAddress = _restaurantAddressTF.text;
    
    Restaurant *newRestaurant = [[Restaurant alloc]initWithRestaurantName:restaurantName address:resturantAddress];
    
    FirebaseRef *FBRef = [[FirebaseRef alloc]initWithURL];
    Firebase *restaurantRef = [FBRef firebaseRefForPath:@"/restaurants"];
    Firebase *addRestaurantAsChildRef = [restaurantRef childByAutoId];
    
//    Firebase *restaurantRef = [firebaseRef childByAppendingPath:@"restaurants"];
    NSDictionary *restaurant = @{@"name": newRestaurant.name, @"address": newRestaurant.address};
    [addRestaurantAsChildRef setValue:restaurant];
}


@end

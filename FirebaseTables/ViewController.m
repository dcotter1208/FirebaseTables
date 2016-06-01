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

@implementation ViewController
Firebase *firebaseRef;
- (void)viewDidLoad {
    [super viewDidLoad];
    
    firebaseRef = [[Firebase alloc]initWithUrl:@"https://fbtables.firebaseio.com"];
    [self testingFirebase];
    
    // Do any additional setup after loading the view, typically from a nib.
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


-(void)testingFirebase {
    NSDictionary *donovan = @{@"name": @"donovan", @"age": @"28"};
    NSDictionary *michael = @{@"name": @"michael", @"age": @"29"};
    
    Firebase *userRef = [firebaseRef childByAppendingPath:@"users"];
 
    NSDictionary *users = @{@"user1": donovan, @"user2": michael};
    
    [userRef setValue:users];
    
}


@end

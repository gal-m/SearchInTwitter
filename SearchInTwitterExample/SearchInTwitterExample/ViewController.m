//
//  ViewController.m
//  SearchInTwitterExample
//
//  Created by Gal Mirkin on 09/03/2017.
//  Copyright © 2017 Gal Mirkin. All rights reserved.
//


#import <SearchInTwitter.h>
#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) NSArray *statusesList;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    // get the Token and set it
    NSString *key = @"MwYE7NjeXSQpaUOAUsxY4GQAS";
    NSString *secret =  @"CI8oqbpAxq2bxLMbffmkBpoIjMJ574aYqG8Xw8HPVDjypjX2nu";
    
    [[SearchInTwitter sharedInstance] getOAuthTokenWithConsumerKey:key consumerSecret:secret withCallback:^(AuthTokenResult *result, NSError *error) {
        
        if (result.accessToken) {
            [[SearchInTwitter sharedInstance] setAccessToken:result.accessToken];
        }
    }];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//////////////////////////////////////////////////////////////////////////
#pragma mark - Buttons Actions
//////////////////////////////////////////////////////////////////////////
- (IBAction)searchButtonPressed:(id)sender {
    [self.view endEditing:YES];
    
    //use the text searchTF text for the search
    [[SearchInTwitter sharedInstance] searchTwitterFor:_searchTF.text withCallback:^(SearchTwitterResult *result, NSError *error) {
        
        if (!error && result.statuses) {
            self.statusesList = result.statuses;
            [_statusesTable reloadData];
        }
    }];
}


//////////////////////////////////////////////////////////////////////////
#pragma mark - TableView DataSource
//////////////////////////////////////////////////////////////////////////
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _statusesList.count;
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 60;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *cellIdentifier = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellIdentifier];
    }
    
    Statuse *statuse = _statusesList[indexPath.row];
    
    cell.textLabel.text = statuse.text;
    return cell;
}



@end

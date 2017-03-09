//
//  ViewController.h
//  SearchInTwitterExample
//
//  Created by Gal Mirkin on 09/03/2017.
//  Copyright © 2017 Gal Mirkin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *searchTF;
@property (weak, nonatomic) IBOutlet UITableView *statusesTable;

- (IBAction)searchButtonPressed:(id)sender;

@end


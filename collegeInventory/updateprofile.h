//
//  updateprofile.h
//  collegeInventory
//
//  Created by admin on 2017-03-15.
//  Copyright © 2017 admin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface updateprofile : UIViewController{}

@property (strong, nonatomic) IBOutlet UITextField *fname;

@property (strong, nonatomic) IBOutlet UITextField *lname;

@property (strong, nonatomic) IBOutlet UITextField *contact;

@property (strong, nonatomic) IBOutlet UITextField *email;

@property (strong, nonatomic) IBOutlet UITextField *username;

@property (strong, nonatomic) IBOutlet NSString *uid;

- (IBAction)update:(id)sender;
@property (strong, nonatomic) IBOutlet UITextField *password;

@end

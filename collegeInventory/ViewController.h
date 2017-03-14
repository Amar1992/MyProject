//
//  ViewController.h
//  collegeInventory
//
//  Created by admin on 2016-12-27.
//  Copyright © 2016 admin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    


}
@property (strong, nonatomic) IBOutlet UITextField *uname;
@property (strong, nonatomic) IBOutlet UITextField *password;

@property (strong, nonatomic) IBOutlet NSString *username;
@property (strong, nonatomic) IBOutlet NSString *passwrd;

- (IBAction)login:(id)sender;


@end


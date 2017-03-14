//
//  profileview.h
//  collegeInventory
//
//  Created by admin on 2017-03-04.
//  Copyright © 2017 admin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface profileview : UIViewController{
    
}
@property (strong, nonatomic) IBOutlet NSString *url;

@property (strong, nonatomic) IBOutlet UITextField *fname;
@property (strong, nonatomic) IBOutlet UITextField *lname;
@property (strong, nonatomic) IBOutlet UITextField *uid;
@property (strong, nonatomic) IBOutlet UITextField *contact;

@property (strong, nonatomic) IBOutlet UITextField *email;
@property (strong, nonatomic) IBOutlet UITextField *active;
@property (strong, nonatomic) IBOutlet UITextField *utype;

@end

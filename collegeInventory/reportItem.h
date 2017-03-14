//
//  reportItem.h
//  collegeInventory
//
//  Created by admin on 2017-03-12.
//  Copyright © 2017 admin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface reportItem : UIViewController{
    
    
}
@property (strong, nonatomic) IBOutlet UITextField *itemname;


@property (strong, nonatomic) IBOutlet UITextField *username;


@property (strong, nonatomic) IBOutlet UITextField *category;

@property (strong, nonatomic) IBOutlet UITextField *descrption;




- (IBAction)addreport:(id)sender;

- (IBAction)listreport:(id)sender;







@end

//
//  AddItem.h
//  collegeInventory
//
//  Created by admin on 2017-03-12.
//  Copyright © 2017 admin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddItem : UIViewController{
    
}


@property (strong, nonatomic) IBOutlet UITextField *iId;

@property (strong, nonatomic) IBOutlet UITextField *iname;

@property (strong, nonatomic) IBOutlet UITextField *quantity;

@property (strong, nonatomic) IBOutlet UITextField *available;

@property (strong, nonatomic) IBOutlet UITextField *category;

@property (strong, nonatomic) IBOutlet UITextField *scategory;


- (IBAction)add:(id)sender;

@end

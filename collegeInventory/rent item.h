//
//  rent item.h
//  collegeInventory
//
//  Created by admin on 2017-03-14.
//  Copyright © 2017 admin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface rent_item : UIViewController{
    
}

@property (strong, nonatomic) IBOutlet UITextField *iname;

@property (strong, nonatomic) IBOutlet UITextField *category;

- (IBAction)findItem:(id)sender;

- (IBAction)myItems:(id)sender;

@end

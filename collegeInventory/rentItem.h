//
//  rentItem.h
//  collegeInventory
//
//  Created by admin on 2017-03-14.
//  Copyright © 2017 admin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface rentItem : UIViewController{
    
}

@property (strong, nonatomic) IBOutlet UITextField *iname;

@property (strong, nonatomic) IBOutlet UITextField *category;

- (IBAction)myItem:(id)sender;


- (IBAction)findItem:(id)sender;




@end

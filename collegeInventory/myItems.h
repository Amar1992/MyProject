//
//  myItems.h
//  collegeInventory
//
//  Created by admin on 2017-03-12.
//  Copyright © 2017 admin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface myItems : UIViewController{
    
    
}

@property (strong, nonatomic) IBOutlet UITextField *itemName;

@property (strong, nonatomic) IBOutlet UITextField *Category;


- (IBAction)findItem:(id)sender;

- (IBAction)addItem:(id)sender;




@end

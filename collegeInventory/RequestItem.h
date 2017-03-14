//
//  RequestItem.h
//  collegeInventory
//
//  Created by admin on 2017-03-13.
//  Copyright © 2017 admin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RequestItem : UIViewController{
    
}

@property (strong, nonatomic) IBOutlet UITextField *iname;

@property (strong, nonatomic) IBOutlet UITextField *uname;


@property (strong, nonatomic) IBOutlet UITextField *category;


@property (strong, nonatomic) IBOutlet UITextField *descp;

- (IBAction)request:(id)sender;

@end

//
//  reportlist.h
//  collegeInventory
//
//  Created by admin on 2017-03-12.
//  Copyright © 2017 admin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface reportlist : UIViewController<UITableViewDataSource,UITableViewDelegate>{
    
    
}

@property (strong, nonatomic) IBOutlet NSString *url;
@property (nonatomic,retain) NSString *myString;
@property (nonatomic,retain) NSString *myString2;
@property(nonatomic, retain) IBOutlet NSString *myItem;
@property (nonatomic,retain) NSArray *myTitleArray;


@end

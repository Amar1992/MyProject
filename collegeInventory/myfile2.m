//
//  myfile2.m
//  collegeInventory
//
//  Created by admin on 2017-03-12.
//  Copyright © 2017 admin. All rights reserved.
//

#import "myfile2.h"
#import "myItems.h"

@interface myfile2 ()

@end

@implementation myfile2

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    NSURLSession *mySession = [NSURLSession sharedSession];
    [[mySession dataTaskWithURL:[NSURL URLWithString:self.url] completionHandler:^(NSData * data, NSURLResponse * response, NSError * error) {
        if (data.length > 0 && error == nil) {
            
            NSDictionary *myMainJsonObject=[NSJSONSerialization JSONObjectWithData:
                                            data options:0 error : NULL];
            
            
            
        
            
            
            NSArray *result = [myMainJsonObject objectForKey:@"Items_Detail"];
            
            if ( [result count] == 0 ) {
                
                self.itemname.text = @"Not Available";
                
                self.itemid.text = @"Not Available";
                
                self.category.text = @"Not Available";
                
                self.quantity.text = @"Not Available";
                
                self.available.text = @"Not Available";
            }
            
            
            for (NSDictionary *myResult in result) {
            
            self.itemname.text = [myResult objectForKey:@"Item_Name"];
            
            self.itemid.text = [[myResult objectForKey:@"Item_Id"]stringValue];
            
            self.category.text = self.cat;
            
            self.quantity.text = [[myResult objectForKey:@"Quantity"]stringValue];
            
            self.available.text = [myResult objectForKey:@"Available"];
            
            }
            
            
            
        }

        
    }]resume];

    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

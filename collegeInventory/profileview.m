//
//  profileview.m
//  collegeInventory
//
//  Created by admin on 2017-03-04.
//  Copyright © 2017 admin. All rights reserved.
//

#import "profileview.h"
#import "homepage.h"


@interface profileview ()

@end

@implementation profileview

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
   // homepage *myView = (homepage *)self.inputViewController;
    
   NSLog(@"my url is %@",self.url);
    
    NSURLSession *mySession = [NSURLSession sharedSession];
    [[mySession dataTaskWithURL:[NSURL URLWithString:self.url] completionHandler:^(NSData * data, NSURLResponse * response, NSError * error) {
        if (data.length > 0 && error == nil) {
            NSDictionary *myMainJsonObject=[NSJSONSerialization JSONObjectWithData:
                                            data options:0 error : NULL];
            
            NSArray *result = [myMainJsonObject objectForKey:@"User_Detail"];
            
            for (NSDictionary *myResult in result) {
            
            self.uid.text = [[myResult objectForKey:@"User_Id"]stringValue];
            
            self.fname.text=[myResult objectForKey:@"First_Name"];
            
            self.lname.text=[myResult objectForKey:@"Last_Name"];
            
            self.email.text=[myResult objectForKey:@"Email_id"];
            
            self.contact.text = [myResult objectForKey:@"Contact_no"];
            
             self.utype.text = [myResult objectForKey:@"UserType"];
            
            self.active.text = [myResult objectForKey:@"Active"];
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

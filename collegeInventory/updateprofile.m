//
//  updateprofile.m
//  collegeInventory
//
//  Created by admin on 2017-03-15.
//  Copyright © 2017 admin. All rights reserved.
//

#import "updateprofile.h"

@interface updateprofile ()

@end

@implementation updateprofile

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
   self.username.text = self.uid ; 
    
    
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

- (IBAction)update:(id)sender {
    
    
    NSString * uid = self.uid;
    NSString *fname = self.fname.text ;
    NSString *lname = self.lname.text ;
    NSString *contact = self.contact.text ;
    NSString *email = self.email.text ;
    NSString *password = self.password.text ;
    
    
    NSString *myurl = [NSString stringWithFormat:@"http://144.217.163.57:8080/cegepgim/mobile/mycall/updateuser&%1$@&%2$@&%3$@&%4$@&%5$@&%6$@",uid,fname,lname,email,contact,password];
    
    NSLog(@"my url is %@",myurl);
    
    NSURLSession *mysession=[NSURLSession sharedSession];
    
    [[mysession dataTaskWithURL:[NSURL URLWithString:myurl] completionHandler:^(NSData * data, NSURLResponse * response, NSError * error) {
        
        if(data.length>0 && error==nil)
        {
            
            
        }
        
    }]resume];
    

    if ([fname isEqual:@""] || [uid isEqual:@""] ||[password isEqual:@""]) {
        UIAlertController * alert= [UIAlertController alertControllerWithTitle:@"Error"
                                                                       message:@"Please Enter all Values."
                                    
                                                                preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction * defaultAction = [ UIAlertAction actionWithTitle:@"OK"
                                                                 style :UIAlertActionStyleDefault
                                                                handler:^(UIAlertAction * action )
                                         {}];
        [alert addAction :defaultAction ];
        [ self presentViewController : alert animated: YES completion : nil ];
        
        
    }
        
        UIAlertController * alert= [UIAlertController alertControllerWithTitle:@"Status"
                                                                       message:@"User Profile Updated."
                                    
                                                                preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction * defaultAction = [ UIAlertAction actionWithTitle:@"OK"
                                                                 style :UIAlertActionStyleDefault
                                                                handler:^(UIAlertAction * action )
                                         {}];
        [alert addAction :defaultAction ];
        [ self presentViewController : alert animated: YES completion : nil ];
        
        
    
    
    
    
}
@end

//
//  RequestItem.m
//  collegeInventory
//
//  Created by admin on 2017-03-13.
//  Copyright © 2017 admin. All rights reserved.
//

#import "RequestItem.h"

@interface RequestItem ()

@end

@implementation RequestItem

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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

- (IBAction)request:(id)sender {
    
    
    
    
    NSString *itemname = self.iname.text ;
    NSString *uname = self.uname.text ;
    NSString *descrp = self.descp.text ;
    NSString *category = self.category.text ;
    
    
    if ([uname isEqual:@""] || [itemname isEqual:@""] ||[category isEqual:@""]) {
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
    else{
        
        UIAlertController * alert= [UIAlertController alertControllerWithTitle:@"Status"
                                                                       message:@"Item Added."
                                    
                                                                preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction * defaultAction = [ UIAlertAction actionWithTitle:@"OK"
                                                                 style :UIAlertActionStyleDefault
                                                                handler:^(UIAlertAction * action )
                                         {}];
        [alert addAction :defaultAction ];
        [ self presentViewController : alert animated: YES completion : nil ];
        
        self.iname.hidden = true;
        self.uname.hidden = true;
        self.descp.hidden = true;
        self.category.hidden = true;
        
    }
    
    
    NSString *myurl = [NSString stringWithFormat:@"http://144.217.163.57:8080/cegepgim/mobile/mycall/request&%1$@&%2$@&%3$@&%4$@",itemname,uname,descrp,category];
    
    NSLog(@"my url is %@",myurl);
    
    NSURLSession *mysession=[NSURLSession sharedSession];
    
    [[mysession dataTaskWithURL:[NSURL URLWithString:myurl] completionHandler:^(NSData * data, NSURLResponse * response, NSError * error) {
        
        if(data.length>0 && error==nil)
        {
            NSDictionary *myobject=[NSJSONSerialization JSONObjectWithData:data options:0 error:NULL];
            
            
        }
        
    }]resume];
}

    

@end

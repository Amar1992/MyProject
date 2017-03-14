//
//  reportdetail.m
//  collegeInventory
//
//  Created by admin on 2017-03-12.
//  Copyright © 2017 admin. All rights reserved.
//

#import "reportdetail.h"

@interface reportdetail ()

@end

@implementation reportdetail

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSURLSession *mysession=[NSURLSession sharedSession];
    
    [[mysession dataTaskWithURL:[NSURL URLWithString:self.url] completionHandler:^(NSData * data, NSURLResponse * response, NSError * error) {
        
        if(data.length>0 && error==nil)
        {
            NSDictionary *myMainJsonObject=[NSJSONSerialization JSONObjectWithData:data options:0 error:NULL];
            
            
            NSArray *result = [myMainJsonObject objectForKey:@"ReportItem_Detail"];
            
            for (NSDictionary *myobject in result){
                
            
            self.iname.text=[myobject objectForKey:@"Item_Name"];
            
            self.cname.text=[myobject objectForKey:@"Category"];
            
            self.uid.text=[[myobject objectForKey:@"User_Id"]stringValue];
            
            self.descp.text=[myobject objectForKey:@"Description"];
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

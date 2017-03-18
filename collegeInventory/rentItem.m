//
//  rentItem.m
//  collegeInventory
//
//  Created by admin on 2017-03-14.
//  Copyright © 2017 admin. All rights reserved.
//

#import "rentItem.h"
#import "myfile2.h"


@interface rentItem ()

@end

@implementation rentItem

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}



-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if ([segue.identifier isEqualToString:@"ritemdetail"]) {
        myfile2 *myView=(myfile2 *)segue.destinationViewController;
        
        NSString *cat = self.category.text;
        
        NSString *itemname = self.iname.text;
        
        NSString *myUrl=[ NSString stringWithFormat:@"http://144.217.163.57:8080/cegepgim/mobile/mycall/searchItem&%1$@",itemname];
        
        myView.cat = cat;
        myView.url = myUrl;
        
        
        NSLog(@"my url is %@",myUrl);
    }
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

- (IBAction)myItem:(id)sender {
}

- (IBAction)findItem:(id)sender {
    
    if([self.iname.text isEqual:@""] && [self.category.text isEqual:@""])
        
    {
        
        UIAlertController * alert= [UIAlertController alertControllerWithTitle:@"Error"
                                                                       message:@"Please Enter Item Name and Category."
                                    
                                                                preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction * defaultAction = [ UIAlertAction actionWithTitle:@"OK"
                                                                 style :UIAlertActionStyleDefault
                                                                handler:^(UIAlertAction * action )
                                         {}];
        [alert addAction :defaultAction ];
        [ self presentViewController : alert animated: YES completion : nil ];
        
        // prevent segue from occurring
        
    }

}
@end
